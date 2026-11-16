# ROS 2 Bags: Recording, Storage, Naming, and Tools

This guide describes how UBM Driverless records, stores, retrieves, and replays
ROS 2 bags. It also documents the current on-car naming scheme and the tools in
[`ubm-rosbag-tools`](https://github.com/ubm-driverless/ubm-rosbag-tools).

## What is a rosbag?

A rosbag is a time-ordered archive of ROS messages. It stores the messages that
were published on selected topics together with topic names, message types,
timestamps, serialization information, and recording metadata. A bag can then
be replayed so that ROS nodes receive approximately the same topic stream as
they did during the original run.

Typical uses include:

- debugging a mission without having the car available;
- comparing algorithm versions on the same sensor data;
- reproducing an issue;
- visualizing a run in RViz or Foxglove;
- generating regression and integration tests.

A bag is not a complete snapshot of the ASU. It does not automatically contain
parameters, source code, Git revisions, environment variables, files, or data
that was never published on a recorded ROS topic. Replay is therefore most
reliable when the software revision and configuration used for the run are
known.

The upstream implementation and CLI are maintained in
[`ros2/rosbag2`](https://github.com/ros2/rosbag2).

## Bag directory and storage formats

In ROS 2, the **bag is normally the whole directory**, not just the largest
file inside it. A typical UBM recording looks like this:

```text
Trackdrive_2026-11-16_14-32-08_44.50_11.34/
├── metadata.yaml
└── Trackdrive_2026-11-16_14-32-08_44.50_11.34_0.mcap
```

Keep and transfer the complete directory. `metadata.yaml` describes the bag,
its topics, duration, message counts, and storage files.

The formats encountered in UBM archives are:

| File | Meaning |
| --- | --- |
| `.mcap` | Current on-car storage format. MCAP supports indexed access and is the configured format of the FSAE recorder. |
| `.db3` | SQLite3 storage used by older or externally generated ROS 2 bags. |
| `metadata.yaml` | ROS 2 bag metadata. It belongs with the storage file(s). |
| `.zstd` | A rosbag2 file compressed with Zstandard. Decompression support must be installed to read it. |
| `.bag` | Legacy ROS 1 bag. Some UBM comparison tools can read it, but `ros2 bag` cannot treat it as a native ROS 2 bag. |

MCAP-specific rosbag2 options are documented by the official
[`rosbag2_storage_mcap` plugin](https://github.com/ros2/rosbag2/blob/rolling/rosbag2_storage_mcap/README.md).

## How the FSAE car records bags

The on-car pipeline starts `bag_recorder_node` for every configured mission.
The node begins recording after its readiness service receives the selected
mission. Its current configuration is:

| Setting | Current value |
| --- | --- |
| Storage format | `mcap` |
| Serialization | `cdr` |
| Output directory | `recordings/` |
| Free-space reserve | `10 GB` |
| Topics | Topics discovered from the live ROS graph, except `/driving_enabled` and `/parameter_events` |

Newly discovered topics are added during the recorder's discovery period. The
current implementation stops checking after 50,000 timer callbacks (nominally
about 50 seconds after recording starts). Messages are timestamped when the
recorder receives them; a message's own `header.stamp`, if present, remains
part of its payload and may differ from the bag timestamp.

When the mission processes stop, the recorder finalizes the bag if driving is
enabled at shutdown. For `MANUAL_DRIVING`, it also keeps a bag after detecting
approximately three seconds of changing wheel-torque samples above `5 Nm`.
Otherwise, it removes the recording as an unused session. Recording also stops
if available disk space falls below the configured reserve.

!!! warning

    Let the mission shut down cleanly before copying a bag. An abrupt power
    loss can leave metadata or the final MCAP chunk incomplete.

The implementation and parameters currently live in
`bag_recorder_node/` and `launch/bag_recorder.yaml` in the `ubm-fsae`
pipeline repository.

## Where bags are stored

### ASU (on the car)

The current ASU startup script uses `/home/ubm/ubm-fsae` as its working
directory. Because `bag_dir` is configured as the relative path `recordings/`,
the effective location is:

```text
/home/ubm/ubm-fsae/recordings/
```

After connecting to the ASU, inspect it with:

```bash
cd /home/ubm/ubm-fsae/recordings
ls -lah
du -sh -- *
```

If the deployment directory or recorder configuration changes, do not assume
this path is still correct. Check the active repository's `asu_manager.sh` and
`launch/bag_recorder.yaml`.

### OneDrive archive

Long-term/shared recordings are stored in the team's OneDrive rosbag folder.

**TODO:** add the OneDrive link, folder structure, access owner, and upload
policy when they are agreed.

Download the complete bag directory. Do not download only its `.mcap` or `.db3`
file. Work on a local copy and keep the archived original unchanged.

### Downloading from the ASU

The recommended helper is the Rosbag Acquisition Script in
`ubm-rosbag-tools/acquisition_script`. Configure the ASU SSH user, host, remote
directory, and local destination in a local configuration file, then run:

```bash
cd ubm-rosbag-tools/acquisition_script
./ras.sh config.yaml --target big --verbose
```

It uses `rsync` over SSH, supports partial transfers, and preserves the bag
directory hierarchy. Review the destination with `ros2 bag info` before
removing anything from the ASU.

## Inspecting and replaying a bag

First source ROS 2 and the workspace that defines the bag's custom messages:

```bash
source /opt/ros/jazzy/setup.bash
source /path/to/ubm-fsae/install/setup.bash
```

Inspect the recording before replaying it:

```bash
ros2 bag info /path/to/bag_directory
```

Check at least the duration, topic list, message types, and message counts. A
topic with zero or unexpectedly few messages usually indicates a recording,
discovery, or upstream publishing problem.

Replay all recorded topics:

```bash
ros2 bag play /path/to/bag_directory
```

Useful variants are:

```bash
# Play only selected topics
ros2 bag play /path/to/bag_directory --topics /vcu/data /camera_data

# Replay at half speed
ros2 bag play /path/to/bag_directory --rate 0.5

# Repeat continuously
ros2 bag play /path/to/bag_directory --loop

# Publish the recorded clock for nodes configured with use_sim_time=true
ros2 bag play /path/to/bag_directory --clock
```

Run `ros2 bag play --help` for the options supported by the installed ROS 2
distribution. Start the consumer nodes before playback when they must receive
the first messages, and avoid running nodes that publish conflicting live data
on the same topics.

Foxglove can also open supported bag files for interactive inspection. For ROS
graph replay, however, use `ros2 bag play` so that downstream nodes receive the
messages.

## Recording a bag manually

For a focused test, explicitly name the topics and storage format:

```bash
ros2 bag record \
  --storage mcap \
  --output test_2026-11-16_14-32-08 \
  /vcu/data /camera_data
```

To record every currently available topic:

```bash
ros2 bag record --storage mcap --output test_2026-11-16_14-32-08 --all
```

Recording every topic can consume disk space and I/O bandwidth very quickly,
especially with cameras and LiDARs. Prefer an explicit topic list for local
tests. Stop with `Ctrl+C`, wait for finalization, and run `ros2 bag info` on the
result.

## Current on-car naming convention

The recorder currently generates directory names in this form:

```text
<Mission>_<YYYY-MM-DD>_<HH-MM-SS>_<latitude_deg>_<longitude_deg>
```

Example:

```text
Trackdrive_2026-11-16_14-32-08_44.50_11.34
```

Valid mission labels are `Acceleration`, `Autocross`, `Ebs_test`,
`Inspection`, `Manual_driving`, `Skidpad`, and `Trackdrive`. The timestamp uses
the ASU's local system time. Latitude and longitude are rounded to two decimal
places from the first received `/vcu/data` message; if no position has arrived,
the name can contain `0.00_0.00`.

This scheme is generated automatically. Do not rename only the inner storage
file: tools rely on the bag directory and its metadata being consistent. If a
human-readable suffix is required in the archive, rename the complete finalized
directory and verify it again with `ros2 bag info`.

## Proposed future naming convention

The following is a draft to refine before changing the recorder or reorganizing
the archive:

```text
<YYYYMMDD>T<HHMMSS>_<vehicle>_<mission>_<location>_r<NN>_<result>
```

Example:

```text
20261116T143208_fsae_trackdrive_varano_r03_nominal
```

Suggested rules:

- use the ASU local time consistently and record the timezone in a sidecar
  session file;
- use lowercase ASCII, underscores, and no spaces;
- use controlled mission names;
- use `r01`, `r02`, and so on for repeated runs in the same session;
- use `na` for unknown fields rather than silently omitting them;
- keep the result field controlled, for example `nominal`, `aborted`,
  `invalid`, or `debug`;
- store precise coordinates and context in metadata, not in a name rounded to
  two decimals.

A future `session.yaml` beside each bag could record the Git commit, vehicle,
operator, location, timezone, software configuration, sensor configuration,
weather, notes, and reason for an aborted or invalid run. This proposal is not
yet the active convention.

## UBM rosbag tools

Clone and install each tool's local dependencies in a virtual environment:

```bash
git clone https://github.com/ubm-driverless/ubm-rosbag-tools.git
cd ubm-rosbag-tools
python3 -m venv .venv
source .venv/bin/activate
```

The repository currently contains four tool groups.

### Acquisition script

`acquisition_script/ras.sh` synchronizes `.mcap`, `.db3`, `.zstd`, and
`metadata.yaml` files from the configured large (`big`) or small (`small`)
vehicle over SSH. It preserves directory structure and partial transfers.

```bash
cd acquisition_script
./ras.sh config.yaml --target big --verbose
```

### Bag comparison

`rosbag_compare/rcs.py` can report missing topics across bags or compare two
bags. Brief comparison checks topic structure, types, counts, and time bounds;
detailed comparison also compares message fields, aligned by timestamp or
index.

```bash
pip install -r rosbag_compare/requirements.txt

python3 rosbag_compare/rcs.py topic /path/to/bag_collection
python3 rosbag_compare/rcs.py content /path/to/bag_a /path/to/bag_b --type brief
```

Detailed comparisons of UBM message types may require
`--custom-msg-repo /path/to/ubm-fsae`.

### Test-bag generation and mutation

`rosbag_generator/` creates small reference bags and can copy a ROS 2 bag while
dropping or shuffling selected messages. It also includes a message printer
that shows both bag timestamps and `header.stamp`. These utilities are useful
for testing comparison tools and failure handling; write their output to a new
directory and preserve the source bag.

```bash
pip install -r rosbag_generator/requirements.txt

python3 rosbag_generator/print_messages_from_bag.py /path/to/bag \
  --topic /vcu/data --index-range 0:20
```

### Topic and message translation

`rosbag_translator/bag_translator.py` creates a new bag according to a YAML
mapping. It can rename topics without deserializing their messages, transform
message types and fields, apply defaults, and either skip or copy topics that
are absent from the mapping.

It needs a sourced ROS 2 environment in addition to its Python dependencies:

```bash
source /opt/ros/jazzy/setup.bash
source /path/to/ubm-fsae/install/setup.bash
pip install -r rosbag_translator/requirements.txt

python3 rosbag_translator/bag_translator.py \
  --input /path/to/input_bag \
  --output /path/to/output_bag \
  --mapping rosbag_translator/mapping_example.yaml \
  --storage mcap \
  --message-repo /path/to/ubm-fsae \
  --unmapped-behavior copy
```

Never overwrite the source bag. Validate translated output with `ros2 bag info`
and, for important migrations, compare message counts and representative field
values with the source.

## Troubleshooting checklist

- **Unknown message type:** source the workspace containing the message package,
  or provide the custom-message repository to the UBM Python tools.
- **Bag not found:** pass the bag directory, not `metadata.yaml` by itself.
- **Metadata missing after an interrupted recording:** preserve a copy first,
  then consult `ros2 bag reindex --help` for the installed distribution.
- **No data reaches a replayed node:** check topic names, namespaces, message
  types, QoS compatibility, and whether the node expects simulated time.
- **Playback timing looks wrong:** distinguish the bag receive timestamp from
  the message's source `header.stamp`.
- **Transfer appears incomplete:** rerun the acquisition script; `rsync
  --partial` is designed to resume rather than restart large files.
