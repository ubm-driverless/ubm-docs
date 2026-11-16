# Cones: Naming, IDs, and Track File Formats

This guide defines the cone convention used by the UBM Driverless software
stack. It also documents the track formats currently exchanged between
NavSim, the `ubm-fsae` pipeline, and VI-grade tools.

The source of truth for numeric cone classes is
[`ubm_interfaces/msg/Landmark.msg`](https://github.com/ubm-driverless/ubm-fsae/blob/main/ubm_interfaces/msg/Landmark.msg).
Do not introduce a second color-to-number mapping in a node or conversion
script.

## Coordinate and side convention

Unless a file explicitly says otherwise:

- coordinates are in meters;
- yaw angles are in radians;
- the world frame is right-handed, with `x` and `y` on the ground plane;
- in a vehicle-local ROS frame, `x` points forward and `y` points left;
- blue cones delimit the **left** side of the track in the driving direction;
- yellow cones delimit the **right** side of the track in the driving
  direction;
- small and large orange cones mark start/finish gates and other special
  areas; they are not ordinary left/right boundary colors.

The left/right meaning always follows the intended driving direction. Reversing
a track without swapping blue and yellow produces an invalid track for the
planner.

## Canonical cone names and class IDs

| Physical cone | ROS constant | `class_id` | Canonical typed-CSV label | Meaning |
| --- | --- | ---: | --- | --- |
| Blue | `BLUE_CONE` | `0` | `blue` | Left track boundary |
| Large orange | `LARGE_ORANGE_CONE` | `1` | `big` | Large start/finish or special-area marker |
| Small orange | `ORANGE_CONE` | `2` | `orange` | Small start/finish or special-area marker |
| Unknown | `UNKNOWN_CONE` | `3` | `unknown` | Cone detected without a reliable color |
| Yellow | `YELLOW_CONE` | `4` | `yellow` | Right track boundary |

The same numeric mapping is used by NavSim, GraphSLAM, and the cone path
planner. In planner code, the equivalent names are `LEFT`, `ORANGE_BIG`,
`ORANGE_SMALL`, `UNKNOWN`, and `RIGHT`.

!!! warning "Class ID is not landmark ID"
    `class_id` identifies the cone category. `id` identifies one landmark in a
    message or node. The meaning and lifetime of `id` depend on the producer:
    a simulator may assign it from file order, a sensor publisher may number
    only the currently visible detections, and GraphSLAM assigns graph vertex
    IDs. Never infer a cone color from `id`, and do not assume that an `id` is
    stable across topics, nodes, or restarts.

Prefer the constants from the generated `Landmark` message in C++ and Python
instead of raw integers. If a language or external tool cannot use the ROS
constants, keep the table above next to the conversion boundary and test all
five values.

## JSON track formats

JSON is NavSim's lossless scene format. It is the best format when a track must
retain more than cone positions, such as a path, initial pose, significant
poses, metadata, or background images.

### Complete NavSim scene

A current NavSim export has this shape:

```json
{
  "name": "example_track",
  "description": "Example UBM track",
  "version": "V_0.02",
  "savedAt": "2026-09-18T16:23:49.593Z",
  "initialPosition": {
    "x_world": 0.0,
    "y_world": 0.0,
    "yaw_world": 0.0
  },
  "backgroundImages": [],
  "significantPositions": [],
  "cones": [
    { "x_world": 5.0, "y_world": 1.5, "class_id": 0 },
    { "x_world": 5.0, "y_world": -1.5, "class_id": 4 }
  ],
  "path": [
    { "x_world": 5.0, "y_world": 0.0, "index": 0, "desired_speed": 4.0 }
  ]
}
```

Required cone fields are `x_world`, `y_world`, and `class_id`. NavSim preserves
the other current scene fields, but consumers should ignore unknown fields so
that the format can evolve.

### Minimal NavSim JSON

NavSim also accepts either an object containing only a `cones` array:

```json
{
  "cones": [
    { "x_world": 5.0, "y_world": 1.5, "class_id": 0 }
  ]
}
```

or the cone array directly:

```json
[
  { "x_world": 5.0, "y_world": 1.5, "class_id": 0 }
]
```

If `class_id` is missing, NavSim imports the cone as unknown (`3`). Invalid
numeric class IDs are currently coerced to small orange (`2`), so validate
files before using them as ground truth.

JSON track examples are available in the
[`cones_JSON`](https://github.com/ubm-driverless/ubm-trackgen-navsim-js/tree/main/cones_JSON)
directory of the NavSim repository.

## CSV track formats

Several CSV dialects exist in the repositories. They are not interchangeable
unless their schema and color labels match.

### Typed track CSV: pipeline interchange format

Use this format for a cone map consumed by `fsae_physics_simulation` or by
GraphSLAM localization:

```csv
start,0.0,0.0,0.0
blue,5.0,1.5
yellow,5.0,-1.5
orange,0.0,1.5
big,0.6,-1.5
unknown,10.0,0.0
```

The first row is the vehicle start pose:

```text
start,x,y,yaw
```

Every following row is:

```text
type,x,y
```

There is no header. Coordinates are meters and yaw is radians. The canonical
cross-tool labels are `blue`, `yellow`, `orange`, `big`, and `unknown`.

!!! warning "Use `big`, not `large_orange`, in pipeline CSV files"
    NavSim's **Save CSV color+start** action currently exports a large orange
    cone as `large_orange`. NavSim can read that label, but the current
    `fsae_physics_simulation` and GraphSLAM localization loaders recognize only
    `big`. Replace `large_orange` with `big` before using the file in the ROS
    pipeline. The physics simulator also ignores `unknown` rows, while
    GraphSLAM accepts them.

The pipeline's generated maps under
[`track_generator`](https://github.com/ubm-driverless/ubm-fsae/tree/main/track_generator)
use this dialect. The first row is mandatory for GraphSLAM localization and
the physics simulator.

### Coordinate-only CSV

NavSim can export and import a minimal coordinate-only file:

```csv
x,y
5.0,1.5
5.0,-1.5
```

Because this format has no color, NavSim imports every row with
`class_id = 3` (`UNKNOWN_CONE`). Use it only when color is intentionally
unavailable or when another tool requires a plain point list. It is not a
replacement for a typed pipeline map.

### GraphSLAM landmark dump

When `save_landmarks` is enabled, GraphSLAM writes:

```csv
x,y,z
5.0,1.5,0
5.0,-1.5,0
```

This is a diagnostic map dump. It does not contain colors or the start pose,
so it cannot be loaded directly as a typed localization map without a
conversion step.

### Dataset replay CSV

The `data_publisher` package replays perception recordings using separate
`lidar_cones.csv` and `camera_cones.csv` files with this logical schema:

```text
timestamp,x,y,z,color
```

Here `color` is the numeric `class_id` from the canonical table. These files
represent time-stamped sensor observations, not a static track map.

### Legacy fake-publisher CSV

The `fake_cone_publisher` example reads the first three columns as
`type,x,y` and ignores any remaining columns. Its historical files use
`big_orange` rather than `big`:

```csv
blue,5.0,1.5,0.0,0.0,0.0,0.0
yellow,5.0,-1.5,0.0,0.0,0.0,0.0
big_orange,0.0,1.5,0.0,0.0,0.0,0.0
```

Treat this as a package-specific legacy format. Convert it to the typed track
CSV before using it elsewhere.

## VI-grade DRD files

The files used by the current tooling are `.drd`, not `.drv`. VI-grade
describes DRD as trajectory data, distinct from its RDF road-data files. The
DRD files stored in NavSim's
[`piste_DRD`](https://github.com/ubm-driverless/ubm-trackgen-navsim-js/tree/main/piste_DRD)
directory use whitespace-separated columns:

```text
# x-coord  y-coord  width  lat.inc  speed  z-coord
0.0        0.0      3.0    0.0      0.0    0.0
1.0        0.0      3.0    0.0      0.0    0.0
```

NavSim's importer currently uses only:

1. `x-coord` and `y-coord` as a centerline;
2. `width` as the full track width.

It ignores lateral inclination, speed, and elevation. It accepts comma,
semicolon, or whitespace separators and also accepts Fortran-style `D`
exponents.

When `width` is missing or non-positive, NavSim assumes `3.0 m`. It offsets
the centerline by half the width, places blue cones on the left and yellow
cones on the right, and resamples the boundaries and path at approximately
`5.0 m` spacing. For an open DRD, the first two resampled path points define
the initial yaw. A near-coincident final point makes the path closed.

!!! caution "A DRD file is not a cone map"
    It contains a path/centerline and optional width, not measured cone
    positions or colors. The cones are generated by NavSim. Check the driving
    direction, width, blue/yellow sides, closure, start pose, and generated
    spacing before exporting the result to JSON or typed CSV. Some archived
    DRD files contain widths much larger than the 3 m minimum Formula Student
    track width; do not assume the source width is competition-ready.

## Formula Student cone and layout reference

The following values are useful for simulation and track generation, but the
current event rules and handbook always take precedence.

| Item | 2026 FSG reference value |
| --- | --- |
| Small blue cone | Blue body, one white stripe; `228 x 228 x 325 mm`, approximately `0.45 kg` |
| Small yellow cone | Yellow body, one black stripe; `228 x 228 x 325 mm`, approximately `0.45 kg` |
| Small orange cone | Orange body, one white stripe; `228 x 228 x 325 mm`, approximately `0.45 kg` |
| Large orange cone | Orange body, two white stripes; `285 x 285 x 505 mm`, approximately `1.05 kg` |
| Trackdrive minimum track width | `3 m` |
| Trackdrive maximum straight | `80 m` |
| Trackdrive minimum required turning diameter | `9 m` |
| Trackdrive lap length | approximately `200–500 m` |
| Track boundary cone spacing shown in the FSG event layout | `5 m` maximum |
| Autocross slalom spacing | `7.5–12 m` |
| Skidpad inner/outer circle diameters | `15.25 m` / `21.25 m` |
| Skidpad track width | `3 m` |

The current UBM general track generator uses `3.5–5.0 m` cone spacing. This is
a software-generation choice that stays within the illustrated `5 m` maximum;
it is not a universal rule for every discipline or special cone arrangement.

Sources:

- [Formula Student Rules 2026 v1.1](https://www.formulastudent.de/fileadmin/user_upload/all/2026/rules/FS-Rules_2026_v1.1.pdf), especially D4.1, D6.1, and D8.1;
- [FSG 2026 Rules and Documents](https://www.formulastudent.de/fsg/rules/tid/405), which publishes the latest 2026 Event Handbook and cone specifications;
- [VI-Road product page](https://www.vi-grade.com/en/products/vi-road/), which distinguishes DRD trajectory data from RDF road data.

Rules and event handbooks change between seasons. When creating a competition
track, record the rule version used in the track metadata or adjacent README.

## Recommended conversion workflow

1. Import a source JSON, CSV, or DRD into NavSim.
2. Confirm the intended driving direction and initial pose.
3. Verify blue-left and yellow-right along the complete track.
4. Check class IDs, track width, cone spacing, and orange gate placement.
5. Save a full JSON scene as the editable master copy.
6. Export a typed CSV for the ROS pipeline.
7. Replace `large_orange` with `big` and validate the first `start` row.
8. Run the track in simulation before using it on the vehicle.

Do not convert through coordinate-only CSV unless losing color and scene
metadata is intentional.

## Implementation references

- [`Landmark.msg`](https://github.com/ubm-driverless/ubm-fsae/blob/main/ubm_interfaces/msg/Landmark.msg): canonical ROS class IDs;
- [`graph_slam.cpp`](https://github.com/ubm-driverless/ubm-fsae/blob/main/graph_slam/src/graph_slam.cpp): typed localization CSV loader and landmark dump;
- [`physics_simulation_node.cpp`](https://github.com/ubm-driverless/ubm-fsae/blob/main/fsae_physics_simulation/src/physics_simulation_node.cpp): simulation CSV loader and cone publication;
- [`track_generator_final.py`](https://github.com/ubm-driverless/ubm-fsae/blob/main/track_generator/track_generator_final.py): generated track spacing and typed CSV writer;
- [`sketch.js`](https://github.com/ubm-driverless/ubm-trackgen-navsim-js/blob/main/sketch.js): NavSim JSON, CSV, and DRD import/export behavior.
