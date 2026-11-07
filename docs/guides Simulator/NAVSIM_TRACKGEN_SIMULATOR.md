# NavSim TrackGen Simulator

NavSim is a browser-based 2D track editor and navigation simulator for
cone-based autonomous driving. It is implemented with
[p5.js](https://p5js.org/) and can communicate with ROS 2 through
[rosbridge](https://github.com/RobotWebTools/rosbridge_suite).

NavSim can be used without ROS to create and edit tracks. When connected to a
ROS 2 system, it can also simulate a moving vehicle and publish odometry, TF,
and landmark observations. This makes it possible to test the `ubm-fsae`
pipeline from SLAM onwards without running the complete perception stack or a
3D simulator.

Typical uses include:

- creating cone tracks and navigation paths;
- importing and adapting existing JSON, CSV, or DRD tracks;
- moving a virtual vehicle in a 2D environment;
- publishing simulated odometry while the vehicle moves;
- publishing camera and LiDAR landmark arrays with configurable field of view,
  range, rate, sensor offset, and noise;
- testing SLAM and downstream `ubm-fsae` nodes with repeatable input data.

!!! note "NAVSIM_SCREENSHOT_01 — Application overview"
    Replace this note with a screenshot of the complete NavSim window. The
    screenshot should show the top menus, editing tools, canvas, HUD, and
    shortcuts footer. Suggested file:
    `docs/assets/navsim/navsim-overview.png`.

    Use: `![NavSim interface](site:/assets/navsim/navsim-overview.png)`

## How NavSim fits into the ROS pipeline

NavSim runs in the browser. The browser connects to the rosbridge WebSocket,
and rosbridge translates the browser messages into ROS 2 messages.

```text
NavSim in the browser
        |
        | WebSocket (default: ws://localhost:9090)
        v
rosbridge_server
        |
        | ROS 2 topics and TF
        v
SLAM -> mapping/localization -> planning and downstream ubm-fsae nodes
```

NavSim does not emulate raw camera images or raw LiDAR point clouds. Instead,
it detects the cones that fall inside each simulated sensor's field of view and
publishes them directly as landmark arrays. It therefore bypasses the physical
sensors and perception stages and is intended primarily for testing SLAM and
the rest of the pipeline after perception.

The default published interfaces are:

| Data | Topic | ROS type | Frame |
| --- | --- | --- | --- |
| Odometry | `/ekf_pose/odom` | `nav_msgs/msg/Odometry` | `map`, child `base_link` |
| Camera landmarks | `/camera_landmark_array` | `ubm_interfaces/msg/LandmarkArray` | `base_link` |
| LiDAR landmarks | `/lidar_landmark_array` | `ubm_interfaces/msg/LandmarkArray` | `base_link` |
| Vehicle transform | `/tf` | `tf2_msgs/msg/TFMessage` | `map -> base_link` |

The ROS menu also provides a legacy landmark format for older workspaces using
`landmark_msgs/msg/LandmarkArray`. Use the default **Current — ubm_interfaces**
format with the current `ubm-fsae` main branch.

## Download and start NavSim

### Run the editor without ROS

Clone the repository and enter its directory:

```bash
git clone https://github.com/ubm-driverless/ubm-trackgen-navsim-js.git
cd ubm-trackgen-navsim-js
```

Start a local HTTP server with Python:

```bash
python3 -m http.server 8085
```

Open the following address in a modern browser:

```text
http://localhost:8085
```

No Python packages have to be installed. Python is only used to serve the
static HTML, CSS, and JavaScript files. ROS connection warnings can be ignored
when NavSim is used only for track editing.

Do not open `index.html` directly with a `file://` URL. Running a local HTTP
server avoids browser restrictions and makes script loading more reliable.

### Enable ROS 2 communication

Install rosbridge for the ROS 2 distribution used by the workspace. The
current `ubm-fsae` setup uses ROS 2 Jazzy:

```bash
sudo apt update
sudo apt install ros-jazzy-rosbridge-server
```

In a new terminal, source ROS 2 and the built `ubm-fsae` workspace. The latter
is required so that rosbridge can find `ubm_interfaces/msg/LandmarkArray`:

```bash
source /opt/ros/jazzy/setup.bash
cd /path/to/your/ubm-fsae-workspace
source install/setup.bash
```

Launch the WebSocket bridge:

```bash
ros2 launch rosbridge_server rosbridge_websocket_launch.xml port:=9090
```

In NavSim:

1. Open **ROS**.
2. Keep **Current — ubm_interfaces (default)** selected.
3. Enter `localhost` as the rosbridge host when NavSim and ROS run on the same
   computer.
4. Click **Reconnect ROS**.
5. Check that the ROS status changes to connected.

If the browser and ROS run on different computers, enter the IP address of the
computer running rosbridge. NavSim also accepts `host:port` and complete
WebSocket URLs such as `ws://10.42.0.1:9090`.

!!! note "NAVSIM_SCREENSHOT_02 — ROS connection"
    Replace this note with a screenshot of the open ROS menu showing the
    message format, rosbridge address, connection buttons, and connected
    status. Suggested file: `docs/assets/navsim/ros-connection.png`.

    Use: `![NavSim ROS connection menu](site:/assets/navsim/ros-connection.png)`

You can verify the output from another sourced ROS terminal:

```bash
ros2 topic list
ros2 topic echo /ekf_pose/odom
ros2 topic echo /camera_landmark_array
ros2 topic echo /lidar_landmark_array
```

## Interface and menus

The button at the beginning of the top bar switches between **Editing** and
**Navigation**. The available canvas tools change with the selected mode.

### Tracks

The **Tracks** menu manages scenes:

- **New Track** creates an empty scene;
- **Save** stores the track in the browser and opens the export dialog;
- **Load** imports a JSON, CSV, or DRD file;
- **Delete** removes the selected track from browser storage;
- the track selector switches between tracks stored in the browser.

Browser storage is convenient while editing but must not be treated as the
only copy of a track. Browser data can be cleared, and storage belongs to that
specific browser profile. Export important tracks to files and commit them to
the appropriate repository.

JSON scenes can preserve cones, path points, initial and significant poses,
background images, and track metadata. CSV export is useful for cone positions
and the initial pose. DRD import reads a centerline and generates blue and
yellow track boundaries.

### Driving

The **Driving** menu configures vehicle and navigation behavior:

- **Vehicle Dynamics** controls acceleration and braking;
- **Path Follower** controls waypoint arrival distance, desired speed, speed
  variation, per-point speed usage, and maximum turn rate;
- **Perlin Noise**, **WASD**, and **Follow Mouse** contain settings specific to
  those navigation modes;
- **Race Mode** contains timing, checkpoint, and ghost settings;
- **Physics Solver** selects Simple velocity, Ackermann, or Drift and exposes
  the relevant physical parameters.

Ackermann is the normal physics-based choice for vehicle-like steering. Simple
velocity is useful for less constrained motion, while Drift is intended for
experiments with reduced grip and lateral slip.

### Sensors

The **Sensors** menu controls the simulated ROS output:

- **Odometry Settings**: publication period and pose noise;
- **Camera Settings**: publication period, range, field of view, forward
  offset, and distance-dependent noise;
- **LiDAR Settings**: publication period, range, field of view, forward offset,
  and distance-dependent noise.

The period is expressed in milliseconds, so a smaller value produces a higher
publication rate. The camera and LiDAR only publish cones that are in front of
the sensor, inside its configured range, and inside its field of view.

!!! note "NAVSIM_SCREENSHOT_03 — Sensor settings and overlays"
    Replace this note with a screenshot showing one sensor settings section
    and the matching camera/LiDAR field-of-view overlays on the canvas.
    Suggested file: `docs/assets/navsim/sensor-settings.png`.

    Use: `![NavSim sensor settings](site:/assets/navsim/sensor-settings.png)`

### ROS

The **ROS** menu selects the landmark message format, configures the rosbridge
host, reconnects the WebSocket, or disconnects NavSim. The chosen address and
message format are saved in browser storage.

### Graphics

The **Graphics** menu controls presentation rather than simulation data. It can
show or hide sensor overlays, the path, saved car positions, telemetry, and the
shortcuts footer. It also contains cone size, camera follow, zoom, unit, and
track-storage settings.

### Tools, Navigation, and Track Data

In **Editing** mode, the **Tools** panel contains all placement, selection,
deletion, transform, and procedural track tools.

In **Navigation** mode, the **Navigation** panel selects the vehicle motion
mode.

The **Track Data** panel provides numerical editors for placed cones, path
points, background images, and the currently selected item. Use it when exact
coordinates, cone classes, or waypoint speeds are required.

!!! note "NAVSIM_SCREENSHOT_04 — Main menus"
    Replace this note with an annotated screenshot identifying Tracks,
    Driving, Sensors, ROS, Graphics, Tools/Navigation, and Track Data.
    Suggested file: `docs/assets/navsim/main-menus.png`.

    Use: `![NavSim main menus](site:/assets/navsim/main-menus.png)`

## Track editing

Switch to **Editing** from the top bar or press `E`.

### Canvas controls

- Use the mouse wheel to zoom towards the cursor.
- Select **None** and drag the canvas to pan the free camera.
- Press `C` to toggle between camera follow and free camera.
- Press `H` to show or hide the shortcuts footer.
- Press `Esc` to leave the current editing tool.

### Create a track manually

1. Open **Tracks** and select **New Track**.
2. Select **Blue cones**, **Yellow cones**, or **Orange cones** from **Tools**.
3. Click on the canvas to place each cone.
4. Select **Path** and click the desired centerline waypoints in driving order.
5. Select **Initial pose**, click once for the vehicle position, then click a
   second point to define its heading.
6. Optionally add **Significant poses**. These are saved locations to which the
   vehicle can later be teleported with `V` in Navigation mode.
7. Open **Tracks**, select **Save**, choose a track name and export the required
   files.

The path is required by the Path follower navigation mode. The initial pose is
used by the reset command and should normally be placed at the beginning of the
path with the vehicle facing the first waypoint.

!!! note "NAVSIM_SCREENSHOT_05 — Manual track editing"
    Replace this note with a screenshot showing blue/yellow cones, a path, the
    initial pose, and the Tools panel. Suggested file:
    `docs/assets/navsim/manual-track-editing.png`.

    Use: `![Manual track editing in NavSim](site:/assets/navsim/manual-track-editing.png)`

### Select, move, and delete items

- **Select** chooses the nearest cone or path point. Press `G`, move the mouse,
  then click or press `Enter` to confirm the new position.
- **Lasso selection** selects multiple cones by drawing around them. Press `G`
  to move the selection.
- Hold `Shift` while moving selected items to snap positions to a 10 cm grid.
- Press `X` to delete the selected item or selection.
- **Delete cones** and **Delete path** remove nearby items with a click. In
  either deletion tool, `X` clears the entire corresponding collection.

### Transform the complete track

- **Translate track**: click an anchor, move the mouse, and click again to
  confirm.
- **Rotate track**: click the rotation centre, move the mouse around it, and
  click again to confirm.
- **Scale track**: click the scale anchor, move the mouse, and click again to
  confirm.

Camera follow is disabled while a complete-track transform is active.

### Procedural editing tools

- **Circle blue/yellow cones**: press, drag, and release to set the circle
  centre, radius, and starting direction; move the pointer and click to place
  the arc.
- **Spline track**: click control points for a closed centreline, choose track
  width and cone spacing, then click **Generate spline cones**. Backspace or
  Delete removes the last spline control point.
- **Double arc track**: drag the centreline, then use the following clicks to
  set the arc/gap geometry and cone spacing. Press `I` before saving to invert
  the blue and yellow sides.
- **Straight track**: drag the centreline, then set width and cone spacing.
  Press `I` before saving to invert the sides.
- **Merge cones** and **Merge path points** remove points that are closer than
  the configured threshold.
- **Resample Path** rebuilds the path with the requested number of points.

The **Add image** tool imports a reference image into the scene. Its position
and appearance can then be managed in **Track Data -> Background Images**. It
is useful when tracing a track from a plan or aerial image.

!!! note "NAVSIM_SCREENSHOT_06 — Procedural track tool"
    Replace this note with two screenshots or one composite image showing a
    procedural tool during preview and the generated cones. Suggested file:
    `docs/assets/navsim/procedural-track-tools.png`.

    Use: `![NavSim procedural track tools](site:/assets/navsim/procedural-track-tools.png)`

## Navigation

Before navigating, create or load a scene and set an initial pose. A path is
also required for Path follower mode.

1. Switch to **Navigation** from the top bar or press `N`.
2. Select a navigation mode from the **Navigation** panel.
3. Configure its speed and handling in **Driving**.
4. Use **Sensors** to configure publication rates, visibility, and noise.
5. Connect the **ROS** menu if ROS output is required.
6. Press `R` whenever the vehicle must return to the initial pose.

Available navigation modes:

- **Idle**: keeps the vehicle stationary while preserving the scene and ROS
  connection.
- **Perlin noise**: drives with a smooth pseudo-random motion pattern, useful
  for generating varying simulated sensor observations.
- **Path follower**: follows the ordered path points. Press `Y` to toggle path
  looping and `+`/`-` to change the desired speed.
- **WASD**: drives manually with `W`, `A`, `S`, `D` or the arrow keys. `Shift`
  acts as the handbrake when supported by the selected solver. A compatible
  gamepad can also be used.
- **Follow mouse**: click the canvas to enable a target, move the pointer to
  steer and control speed, and click again to stop following it.
- **Nearest cones**: currently displayed but not implemented.

While the vehicle moves and ROS is connected, NavSim continuously publishes
odometry, TF, and the visible landmark arrays at their configured periods.
Landmark coordinates are published in `base_link`; visibility and noise are
computed from the configured virtual sensor origin.

!!! note "NAVSIM_SCREENSHOT_07 — Navigation and ROS data"
    Replace this note with a screenshot of a moving vehicle in Path follower
    mode. Show the path, sensor overlays, Navigation panel, and connected ROS
    status. Suggested file: `docs/assets/navsim/navigation-path-follower.png`.

    Use: `![Path follower navigation in NavSim](site:/assets/navsim/navigation-path-follower.png)`

## Keyboard shortcuts

Shortcuts do not trigger while typing in a text or number input. The footer at
the bottom of the canvas shows the shortcuts relevant to the active mode.

### Global shortcuts

| Key | Action |
| --- | --- |
| `E` | Switch to Editing mode |
| `N` | Switch to Navigation mode |
| `Space` | Switch to Navigation in Idle mode |
| `S` | Open the save/export dialog |
| `L` | Load a JSON, CSV, or DRD track |
| `R` | Reset the vehicle to the initial pose |
| `C` | Toggle camera follow/free mode |
| `H` | Show/hide the shortcuts footer |
| `U` | Show/hide the LiDAR overlay |
| `I` | Show/hide the camera overlay; in Straight/Double arc tools, invert cone sides |
| `K` | Clear skid marks and drift trails |

### Editing shortcuts

| Key | Tool or action |
| --- | --- |
| `Esc` or `0` | Leave the active tool / select None |
| `Q` | Select one item |
| `W` | Lasso selection |
| `G` | Move the selected item(s) |
| `X` | Delete selected item(s), or clear data in a placement/deletion tool |
| `1` | Place blue cones |
| `2` | Place yellow cones |
| `3` | Place orange cones |
| `4` | Place path points |
| `5` | Delete cones |
| `6` | Delete path points |
| `7` | Set the initial pose |
| `V` | Set a significant pose |
| `8` | Translate the complete track |
| `T` | Rotate the complete track |
| `Z` | Scale the complete track |
| `9` | Create a cone arc using the currently selected blue/yellow colour |
| `B` | Create a spline track |
| `O` | Create a double-arc track |
| `P` | Create a straight track |
| `Enter` | Confirm/place the active item where supported |
| `Shift` | Snap moved selections to 10 cm increments |
| `+` / `-` | Rotate the first path index while the Path tool is active |
| `Backspace` / `Delete` | Remove the last spline control point |

### Navigation shortcuts

| Key | Action |
| --- | --- |
| `1` | Idle |
| `2` | Perlin noise |
| `3` | Path follower |
| `4` | WASD/manual drive |
| `5` | Follow mouse |
| `6` | Nearest cones (not implemented) |
| `W/A/S/D` or arrows | Accelerate/brake and steer in WASD mode |
| `Shift` | Handbrake in WASD mode when supported |
| `+` / `-` | Increase/decrease the current navigation mode speed |
| `Y` | Toggle path looping |
| `V` | Teleport to the next significant pose |
| `G` | Enable/disable race timing |
| `J` | Enable/disable race ghosts |

## Troubleshooting

### NavSim opens but ROS is disconnected

- Confirm that rosbridge is still running on port `9090`.
- Confirm that NavSim contains the correct host or IP address.
- Source both ROS 2 and the built `ubm-fsae` workspace before starting
  rosbridge.
- Confirm that the selected landmark format matches the message package in the
  sourced workspace.
- Open the browser developer tools with `Ctrl+Shift+I` and inspect the Console.

### Changes to JavaScript or CSS do not appear

Open the browser developer tools, enable **Disable cache** in the Network tab,
keep the developer tools open, and refresh with `Ctrl+F5`.

### Track edits disappear

Tracks stored only in browser local storage are not portable and can be lost
when browser data is cleared. Use **Save** to export important tracks to JSON or
CSV files.
