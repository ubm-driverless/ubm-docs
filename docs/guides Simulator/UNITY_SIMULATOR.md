# Unity Formula Student Driverless Simulator

The UBM Formula Student Driverless Simulator is a Unity-based 3D front end for
the `ubm-fsae` ROS 2 stack. It loads cone tracks, renders the Formula Student
vehicle and environment, receives the vehicle pose from ROS, and publishes
simulated LiDAR, stereo-camera, cone, and transform data.

The simulator can also run without ROS. In standalone mode, the vehicle can be
driven with a keyboard, gamepad, or joystick, which is useful for inspecting a
track, validating sensor settings, and measuring simulator performance before
connecting the complete pipeline.

Typical uses include:

- visualizing the vehicle on Formula Student cone tracks;
- testing the perception pipeline with simulated point clouds and stereo
  camera data;
- receiving localization output from `/ekf_pose/odom` and applying it to the
  simulated vehicle;
- checking TF, sensor frames, topic names, rates, and payload sizes;
- evaluating different LiDAR sampling and stereo-camera configurations;
- reproducing tests with bundled TrackGen/NavSim maps;
- running manual driving sessions, cone-impact tests, and timed laps.

!!! note "UNITY_SIM_SCREENSHOT_01 — Simulator overview"
    Replace this note with a screenshot of the running simulator showing the
    vehicle, track, cone counter, session timer, Settings button, and diagnostic
    HUD. Suggested file: `docs/assets/unity-simulator/runtime-overview.png`.

    Use: `![Unity simulator runtime overview](site:/assets/unity-simulator/runtime-overview.png)`

## How the simulator fits into the ROS pipeline

The Unity simulator supports two communication transports:

- **ROS-TCP-Connector**, the default transport, using a ROS-TCP-Endpoint on the
  ROS 2 computer;
- **ROS#**, the fallback transport, using rosbridge over a WebSocket.

Both transports expose the same simulator topics to the rest of the stack.

```text
                    odometry input
ROS 2  ------------------------------------>  Unity vehicle pose
       /ekf_pose/odom

ROS 2  <------------------------------------  Unity simulated sensors
       /lidar_points, /camera_data, /cones, /tf
```

Unlike NavSim, the Unity simulator does not publish simulated odometry. In ROS
odometry mode it subscribes to odometry and uses it to position the vehicle.
It then produces sensor data from that pose and the 3D scene.

The simulator does not currently calculate complete vehicle dynamics.
Standalone movement is kinematic, and ROS mode follows received odometry. Cone
collisions use lightweight Unity rigidbodies and are not a validated Formula
Student impact model.

## Requirements

- Unity Hub;
- Unity Editor `6000.6.0f1`;
- Git and Git LFS;
- network access while Unity resolves packages from Git;
- for ROS integration, an Ubuntu 24.04 system running ROS 2 Jazzy and a built
  `ubm-fsae` workspace.

The required Unity version is recorded in the project's
`ProjectSettings/ProjectVersion.txt`. Do not downgrade the project to the old
`6000.0.32f1` version. The current version is newer than the fixed Unity
baseline for CVE-2025-59489.

## Download and open the project

Install and initialize Git LFS before cloning. Vehicle FBX and Blender files
are stored through LFS:

```bash
git lfs install
git clone https://github.com/ubm-driverless/ubm-fsae-sim.git
cd ubm-fsae-sim
git lfs pull
```

Avoid downloading the project as a GitHub source ZIP: depending on the archive
configuration, large model files may be downloaded as small LFS pointer files
instead of real assets.

Open Unity Hub and:

1. install Unity `6000.6.0f1` if it is not already available;
2. select **Add -> Add project from disk**;
3. choose the cloned `ubm-fsae-sim` directory;
4. open the project with Unity `6000.6.0f1`;
5. wait for Unity Package Manager and asset import to finish;
6. open `Assets/Scenes/MainMenu.unity`;
7. enter Play mode.

The project includes ROS-TCP-Connector, ROS#, URP, the Input System, and the
other Unity packages in `Packages/manifest.json`. They are resolved when the
project is opened for the first time.

If an FBX or `.blend` file contains only text beginning with
`version https://git-lfs.github.com/spec/v1`, close Unity and run:

```bash
git lfs pull
```

!!! note "UNITY_SIM_SCREENSHOT_02 — Unity project and Play button"
    Replace this note with a screenshot of Unity showing the Project panel,
    `Assets/Scenes/MainMenu.unity`, and the Play button. Suggested file:
    `docs/assets/unity-simulator/unity-editor-start.png`.

    Use: `![Opening the Unity simulator project](site:/assets/unity-simulator/unity-editor-start.png)`

## Start a standalone simulation

ROS is optional for a standalone session.

1. Open `Assets/Scenes/MainMenu.unity` and enter Play mode.
2. Select an **Athena** or **Visione** vehicle.
3. Select the display LOD. LOD 1 is the recommended default.
4. Select the number of LiDAR vertical layers and points per layer.
5. Choose one of the bundled tracks.
6. Choose the asphalt preset. Time-of-day options are currently saved
   placeholders and do not yet provide a complete environment change.
7. Click **Start Simulation**.
8. Press `Esc`, open **Controls**, and select **Standalone input**.
9. Drive with `W/A/S/D` or the arrow keys.

Standalone input uses simplified kinematic movement. It is intended for
simulator interaction and sensor testing, not vehicle-dynamics validation.

## Connect ROS 2

The transport is selected from **Settings -> ROS connection** after the
simulation starts.

### ROS-TCP-Connector

ROS-TCP-Connector is the default transport. On the ROS 2 computer:

1. install ROS-TCP-Endpoint in the same workspace as `ubm_interfaces`;
2. build the workspace;
3. source ROS 2 and the workspace;
4. start ROS-TCP-Endpoint on a network interface reachable from the computer
   running Unity, using port `10000` by default.

Follow the ROS 2 setup instructions in the official
[ROS-TCP-Endpoint repository](https://github.com/Unity-Technologies/ROS-TCP-Endpoint)
for the exact installation and launch commands supported by the installed
version.

In Unity:

1. press `Esc`;
2. open **ROS connection**;
3. select **ROS-TCP-Connector**;
4. set **ROS-TCP host/IP** to the ROS computer's address;
5. keep port `10000` unless the endpoint uses another port;
6. click **Retry connection**;
7. check the connection status at the top of the page.

`127.0.0.1` works only when Unity and ROS-TCP-Endpoint share the same host
network. When Unity runs on Windows and ROS runs on another Ubuntu computer,
enter the Ubuntu computer's LAN address.

### ROS# and rosbridge fallback

ROS# communicates through rosbridge. In a terminal where ROS 2 and the built
`ubm-fsae` workspace are sourced, start rosbridge:

```bash
source /opt/ros/jazzy/setup.bash
cd /path/to/your/ubm-fsae-workspace
source install/setup.bash
ros2 launch rosbridge_server rosbridge_websocket_launch.xml port:=9090
```

In Unity:

1. open **Settings -> ROS connection**;
2. select **ROS# fallback**;
3. set the rosbridge URL, for example `ws://localhost:9090` or
   `ws://<ROS_HOST_IP>:9090`;
4. click **Retry connection**.

The workspace containing `ubm_interfaces` must be sourced before starting
rosbridge; otherwise the bridge cannot advertise the custom camera message.

!!! note "UNITY_SIM_SCREENSHOT_03 — ROS connection page"
    Replace this note with screenshots of the ROS-TCP and ROS# transport
    selections, including endpoint fields and connected status. Suggested
    file: `docs/assets/unity-simulator/ros-connection.png`.

    Use: `![Unity simulator ROS connection settings](site:/assets/unity-simulator/ros-connection.png)`

### Select ROS odometry control

Connecting a transport does not automatically change the vehicle input mode.
Open **Settings -> Controls** and select **ROS odometry**. The default input is:

| Topic | Type | Purpose |
| --- | --- | --- |
| `/ekf_pose/odom` | `nav_msgs/msg/Odometry` | UBM FSAE vehicle pose |

The **ROS connection** page provides two shortcuts:

- **UBM FSAE topic** selects `/ekf_pose/odom`;
- **Legacy sim topic** selects `/command_odom`.

Verify the selected input on the ROS system:

```bash
ros2 topic info /ekf_pose/odom
ros2 topic echo /ekf_pose/odom --once
```

## Published ROS interfaces

Defaults are loaded from `Assets/StreamingAssets/default_settings.json` and can
be changed at runtime.

| Direction | Default topic | Message | Purpose |
| --- | --- | --- | --- |
| Subscribe | `/ekf_pose/odom` | `nav_msgs/msg/Odometry` | Vehicle position and orientation |
| Publish | `/lidar_points` | `sensor_msgs/msg/PointCloud2` | Simulated LiDAR point cloud |
| Publish | `/cones` | `visualization_msgs/msg/MarkerArray` | Visible/noisy/missing cone simulation |
| Publish | `/camera_data` | `ubm_interfaces/msg/CameraData` | Left/right images and camera information |
| Publish | `/tf` | `tf2_msgs/msg/TFMessage` | Vehicle and sensor transforms |

The point cloud is normally published in the `hesai_lidar` frame. Vehicle and
sensor frame names can be edited from **ROS connection -> Frames**.

Useful checks include:

```bash
ros2 topic hz /lidar_points
ros2 topic hz /camera_data
ros2 topic echo /tf --once
ros2 topic echo /cones --once
```

The optional `DriveSubscriber` understands `ubm_interfaces/msg/Control` on
`/control`, but it is currently diagnostic. Vehicle movement in ROS mode still
follows odometry.

## Launch menu

The launch menu configures the session before the simulation scene is loaded.

### Vehicle and display LOD

- **Athena** and **Visione** select the vehicle model and matching sensor
  arrangement.
- **LOD 0 High** uses the most detailed display mesh.
- **LOD 1 Medium** is the default and recommended general-purpose choice.
- **LOD 2 Low** reduces rendering cost on slower computers.

The collision mesh remains separate from the selected visual LOD.

### LiDAR sampling

- **Vertical layers** controls the number of simulated scan layers.
- **Points per layer** controls horizontal sampling.
- The summary displays the total points generated per scan.

Dense scans increase CPU work, message size, serialization cost, and network
traffic. Start with a smaller configuration when testing on a low-spec laptop.

### Track and environment

The track selector shows a top-down preview, cone counts, dimensions, format,
and start position. Bundled JSON and CSV maps are read from
`Assets/StreamingAssets/`.

The environment section selects an asphalt material. Time-of-day selections
are stored for future use but are currently placeholders.

!!! note "UNITY_SIM_SCREENSHOT_04 — Launch menu"
    Replace this note with a screenshot of the complete launch menu, including
    vehicle, LOD, LiDAR sampling, track preview, and environment settings.
    Suggested file: `docs/assets/unity-simulator/launch-menu.png`.

    Use: `![Unity simulator launch menu](site:/assets/unity-simulator/launch-menu.png)`

## Runtime Settings menu

Press `Esc` or click **Settings** to open the runtime panel. Vehicle input and
camera interaction are paused while the panel is open. Values are saved in
Unity `PlayerPrefs` when the panel closes.

### Overview

**Overview** summarizes the ROS connection, active camera, graphics status,
vehicle position, and diagnostics. It also links to maps, controls, ROS, and
the main launch menu.

### Maps

**Maps** searches and loads bundled tracks without restarting Play mode. It can
also load a CSV or TrackGen/NavSim JSON file using an absolute filesystem path.
Selecting a map does not activate it until **Load selected map** is pressed.

### Controls

**Controls** switches between standalone input and ROS odometry and configures
maximum speed, acceleration, and steering rate for standalone motion.

### ROS connection

**ROS connection** selects the transport and endpoint, retries or closes the
connection, edits topic names, selects odometry presets, configures TF
frequency, and changes vehicle/sensor frame names.

### Sensors

**Sensors** enables or disables the point cloud, cone, and stereo-camera
publishers. Disabling unused publishers is the fastest way to reduce simulator
load during movement-only tests.

The point-cloud section controls:

- topic and field/layer definition files;
- horizontal angular resolution and vertical-layer count;
- maximum distance and scan frequency;
- visualization of rays that hit cones.

The cone-detection section controls topic, mesh markers, distance, frequency,
missing detections, noisy detections, and maximum position noise.

The stereo-camera section controls topic, publication frequency, image size,
raw or JPEG payload, and JPEG quality. The available per-eye profiles are
1280×720, 960×540, 640×360, and 426×240.

!!! note "UNITY_SIM_SCREENSHOT_05 — Sensor settings"
    Replace this note with a screenshot of the Sensors page showing publisher
    toggles, LiDAR parameters, and stereo-camera profiles. Suggested file:
    `docs/assets/unity-simulator/sensor-settings.png`.

    Use: `![Unity simulator sensor settings](site:/assets/unity-simulator/sensor-settings.png)`

### Camera

The simulator provides four display views:

- **Chase** follows the vehicle from behind;
- **Overhead** follows the position while keeping a fixed world orientation;
- **Orbit** rotates around and follows the vehicle;
- **Free roam** detaches the camera for independent scene inspection.

The page also controls overhead height/framing, orbit distance, orbit-axis
inversion, and follow smoothing.

### Graphics

**Graphics** provides Low, Balanced, and High runtime profiles, along with
target FPS, VSync, URP render scale, real-time shadows, and the performance HUD.
Graphics API selection requires restarting Unity; on Linux, use
`-force-vulkan` if the OpenGL editor backend produces rendering artifacts.

!!! note "UNITY_SIM_SCREENSHOT_06 — Runtime Settings tabs"
    Replace this note with an annotated screenshot identifying Overview, Maps,
    Controls, ROS connection, Sensors, Camera, and Graphics. Suggested file:
    `docs/assets/unity-simulator/runtime-settings-tabs.png`.

    Use: `![Unity simulator Settings tabs](site:/assets/unity-simulator/runtime-settings-tabs.png)`

## Tracks and map formats

Bundled tracks belong in `Assets/StreamingAssets/`. Supported files appear in
both the launch menu and the runtime map library and are included in standalone
builds.

The simulator supports:

- TrackGen/NavSim JSON;
- typed CSV with `start`, `blue`, `yellow`, `orange`, and `big` rows;
- legacy `x,y` CSV files, loaded as unknown cones.

A typed CSV example is:

```csv
start,0.0,0.0,0.0
blue,5.0,2.0
yellow,5.0,-2.0
orange,0.0,1.0
```

TrackGen/NavSim JSON preserves `initialPosition`, cones, path, and significant
positions. Unity currently instantiates the cones and applies the initial pose;
path and significant-position data are accepted for compatibility but are not
used for Unity path following.

Unity uses `x/z` as the ground plane, while TrackGen and ROS use `x/y`:

| TrackGen/ROS | Unity |
| --- | --- |
| `x` | `x` |
| `y` | `z` |
| positive yaw | negative Unity yaw around `y` |

Press `R` to place the vehicle at the active map's start pose. If the map has
no start pose, the simulator uses the scene's initial vehicle position.

!!! note "UNITY_SIM_SCREENSHOT_07 — Map library and track"
    Replace this note with a composite image showing a map selected in the
    runtime library and the corresponding cone track in the scene. Suggested
    file: `docs/assets/unity-simulator/map-library.png`.

    Use: `![Unity simulator map library](site:/assets/unity-simulator/map-library.png)`

## Driving, cone impacts, and run timing

In standalone mode, `W/S` controls throttle and brake/reverse, while `A/D`
steers. Arrow keys are aliases. Gamepads and generic joysticks are supported.

Track cones can be knocked over. Each cone impact is counted once. Press
`Shift+R` or use the cone HUD reset button to restore every cone and clear the
counter.

Press `T` to start or stop the run timer. The timer uses unscaled Unity time,
so it continues to measure consistently across frame-rate changes.

## Cameras

Press `C` to cycle through Chase, Overhead, Orbit, and Free roam views.

### Overhead

Use the mouse wheel to change altitude and orthographic framing. With a
gamepad, the vertical left stick changes height; use the triggers for vehicle
throttle while this camera is active.

### Orbit

Use the mouse wheel to change distance. Drag with the left mouse button or use
the gamepad right stick to orbit around the vehicle.

### Free roam

Drag with either mouse button to look around. Use `W/A/S/D` to move on the
horizontal plane, `E/Q` to move vertically, and hold `Shift` for precise slow
movement. Vehicle keyboard input is disabled while Free roam is active.

## Keyboard and mouse shortcuts

| Input | Action |
| --- | --- |
| `Esc` | Open or close runtime Settings |
| `C` | Cycle Chase, Overhead, Orbit, and Free roam cameras |
| `W/A/S/D` or arrows | Drive in standalone mode |
| `R` | Respawn at the active map start pose |
| `Shift+R` | Restore all cones and clear the impact counter |
| `T` | Start or stop the session timer |
| `F3` | Show or hide the performance/ROS diagnostics HUD |
| `L` | Show or hide LiDAR rays that hit cones |
| Mouse wheel | Change Overhead height or Orbit distance |
| Left-mouse drag | Rotate the Orbit camera |
| Either-mouse drag | Look around in Free roam |
| `W/A/S/D` in Free roam | Move the detached camera horizontally |
| `E/Q` in Free roam | Move the detached camera up/down |
| `Shift` in Free roam | Precise slow camera movement |
| `Alt+F4` | Close a standalone Linux/Windows player |

Vehicle and free-roam input are paused while Settings is open. Shortcut
handlers also ignore focused text fields where applicable.

## Performance and diagnostics

Press `F3` to open the diagnostics HUD. It reports:

- FPS, frame time, and Unity/managed memory;
- LiDAR and camera publish cadence, payload size, and transmit age;
- odometry receive and application counts;
- odometry message age and recent message intervals;
- source motion and vehicle tracking error;
- vehicle ground clearance.

If performance is poor:

1. disable unused publishers in **Sensors**;
2. reduce LiDAR layers, points per layer, or scan frequency;
3. reduce stereo resolution or frequency;
4. enable JPEG payloads when network bandwidth is the bottleneck;
5. select the Low or Balanced graphics profile;
6. reduce URP render scale or disable real-time shadows.

Raw stereo images and dense point clouds are expensive to render, serialize,
and transmit. The camera publisher keeps at most one stereo capture in flight
and drops missed periods instead of building an unbounded queue.

## Build a standalone player

In Unity, open **File -> Build Profiles** and create or select the target
platform profile. The scene order must contain:

1. `Assets/Scenes/MainMenu.unity`;
2. `Assets/Scenes/scene.unity`.

Build into a directory outside `Assets/`. Generated Unity directories such as
`Library`, `Temp`, `Logs`, `Builds`, and `UserSettings` must not be committed.

## Troubleshooting

### Unity cannot connect to ROS

- Confirm that the selected transport matches the server running on the ROS
  computer.
- For ROS-TCP, verify the endpoint address and port `10000`.
- For ROS#, verify the WebSocket URL and rosbridge port `9090`.
- Use the ROS computer's LAN IP when Unity runs on another machine.
- Ensure `ubm_interfaces` is built and sourced before starting the endpoint or
  rosbridge.
- Check firewall rules for the selected TCP port.

### The vehicle does not move in ROS mode

- Select **ROS odometry** under **Controls**.
- Select the **UBM FSAE topic** preset or set `/ekf_pose/odom` manually.
- Run `ros2 topic echo /ekf_pose/odom --once`.
- Open the `F3` HUD. `ODOM: STALE` indicates that Unity is not receiving fresh
  messages.
- If messages arrive but tracking error grows, investigate pose application or
  coordinate conversion.

### A custom message cannot be advertised

Build and source the matching `ubm_interfaces` package in the same ROS
environment as ROS-TCP-Endpoint or rosbridge, then restart the server.

### The project opens with missing vehicle meshes

Install Git LFS, close Unity, run `git lfs pull`, and reopen the project.

### Linux rendering artifacts

Restart the Unity Editor or standalone player with `-force-vulkan`. Graphics
API selection is not changed by the runtime graphics profile.
