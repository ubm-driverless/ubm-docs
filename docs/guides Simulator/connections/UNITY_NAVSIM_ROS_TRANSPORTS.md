# Unity, NavSim, ROS 2 and Foxglove

This guide describes two ways to connect the Unity simulator and the browser-based NavSim to one ROS 2 Jazzy graph:

- **ROS# / rosbridge**: legacy WebSocket transport used by older Unity configurations.
- **ROS-TCP-Connector / ROS-TCP-Endpoint**: the recommended Unity transport for camera and LiDAR traffic.

The examples assume that Unity runs on Windows, while ROS 2, NavSim and Foxglove run on Ubuntu. Replace the example addresses with the addresses of the current network.

## Transport overview

```text
NavSim browser ── WebSocket :9090 ──► rosbridge ──► ROS 2 graph
                                                       ▲       │
                                                       │       ▼
Unity ── TCP :10000 ──► ROS-TCP-Endpoint ─────────────┘  pipeline / telemetry
```

NavSim never communicates directly with Unity. It publishes ROS messages through rosbridge; ROS-TCP-Endpoint forwards matching ROS messages to Unity and receives Unity sensor data into the same ROS graph.

Typical topic directions are:

| Topic | Publisher | Consumer |
| --- | --- | --- |
| `/ekf_pose/odom` | NavSim | Unity and ROS nodes |
| `/camera_landmark_array` | NavSim | ROS perception/SLAM nodes |
| `/lidar_landmark_array` | NavSim | ROS perception/SLAM nodes |
| `/lidar_points` | Unity | ROS LiDAR pipeline and telemetry |
| `/camera_data` | Unity | ROS camera pipeline and telemetry |
| `/control` | ROS nodes | Unity |

All ROS processes participating in one test must use the same `ROS_DOMAIN_ID`. The examples use `42`.

## Prerequisites

Set the workspace path once in every new terminal:

```bash
export UBM_WS=/path/to/ubm-fsae
source /opt/ros/jazzy/setup.bash
source "$UBM_WS/install/setup.bash"
export ROS_DOMAIN_ID=42
```

When cloning the ROS-TCP-enabled branch, initialize its submodules and build the required packages first:

```bash
cd "$UBM_WS"
git submodule update --init --recursive
colcon build --symlink-install --packages-select ubm_interfaces ros_tcp_endpoint
```

`ubm_interfaces` is required by rosbridge and live telemetry to load custom types such as `LandmarkArray` and `CameraData`.

## Recommended setup: Unity over ROS-TCP

Use this mode when Unity sends point clouds or camera frames. It avoids JSON/WebSocket conversion of high-bandwidth sensor messages.

### Terminal 1 — ROS-TCP Endpoint

```bash
export UBM_WS=/path/to/ubm-fsae
source /opt/ros/jazzy/setup.bash
source "$UBM_WS/install/setup.bash"
export ROS_DOMAIN_ID=42

ros2 launch launch/ros_tcp_endpoint.launch.py \
  tcp_ip:=0.0.0.0 \
  tcp_port:=10000
```

In Unity select **ROS-TCP-Connector**, then configure:

```text
TCP host: <Ubuntu Ethernet IP>
TCP port: 10000
```

For example, when Ubuntu is `10.42.0.1`, Unity uses `10.42.0.1:10000`. Do not use `127.0.0.1` when Unity and ROS run on different computers.

### Terminal 2 — rosbridge for NavSim

NavSim runs in a browser on Ubuntu, so rosbridge should listen only on loopback. This prevents external clients from using it and avoids exposing port `9090` unnecessarily.

```bash
export UBM_WS=/path/to/ubm-fsae
source /opt/ros/jazzy/setup.bash
source "$UBM_WS/install/setup.bash"
export ROS_DOMAIN_ID=42

ros2 launch rosbridge_server rosbridge_websocket_launch.xml \
  address:=127.0.0.1 \
  port:=9090
```

The current NavSim configuration uses `ws://localhost:9090`.

> rosbridge does not deserialize and forward every ROS topic automatically. It only creates a ROS subscription and converts payload data when a WebSocket client explicitly subscribes to a topic. NavSim currently publishes odometry and landmark messages; it does not subscribe to Unity's `/lidar_points` or `/camera_data`. Therefore these high-bandwidth messages do not pass through rosbridge in this setup.

Do not use the `topics_pub_glob` / `topics_sub_glob` command-line examples unless they have been validated with the installed rosbridge version. On ROS 2 Jazzy, passing YAML-style lists through the standard XML launch file can turn the arguments into `STRING_ARRAY` parameters and make rosbridge exit. The loopback-only bridge plus NavSim's publisher-only behavior is the supported default.

### Terminal 3 — NavSim web server

```bash
cd /path/to/ubm-trackgen-navsim-js
python3 -m http.server 8085 --bind 127.0.0.1
```

Open `http://localhost:8085`, select **Navigation**, then press **Reconnect ROS** if the browser page was already open when rosbridge started.

### Terminal 4 — optional Foxglove live telemetry

`live_telemetry_node` is the preferred in-repository path for Foxglove. It processes `/camera_data` and `/lidar_points` before sending them over WebSocket on port `8765`; the default configuration resizes and JPEG-compresses camera data and applies point-cloud processing.

```bash
export UBM_WS=/path/to/ubm-fsae
source /opt/ros/jazzy/setup.bash
source "$UBM_WS/install/setup.bash"
export ROS_DOMAIN_ID=42

ros2 run live_telemetry_node live_telemetry_node \
  --ros-args \
  --params-file "$UBM_WS/launch/live_telemetry_node.yaml"
```

In Foxglove Studio connect to:

```text
ws://<Ubuntu Ethernet IP>:8765
```

If Foxglove runs on Ubuntu, use `ws://localhost:8765`.

## Legacy setup: Unity over ROS# / rosbridge

Use this mode only for compatibility with an older Unity scene configured for ROS#. It is suitable for low-bandwidth topics such as odometry, but it is not recommended for raw stereo images or point clouds because rosbridge serializes messages for WebSocket transport.

### Terminal 1 — rosbridge accessible from Unity

```bash
export UBM_WS=/path/to/ubm-fsae
source /opt/ros/jazzy/setup.bash
source "$UBM_WS/install/setup.bash"
export ROS_DOMAIN_ID=42

ros2 launch rosbridge_server rosbridge_websocket_launch.xml \
  address:=0.0.0.0 \
  port:=9090
```

In Unity select **ROS# fallback** and configure:

```text
Rosbridge URL: ws://<Ubuntu Ethernet IP>:9090
```

Unity must use the Ubuntu IP address, not `localhost` or `127.0.0.1`.

NavSim can use this same bridge when it runs on Ubuntu. Its browser URL remains `ws://localhost:9090`.

### Terminal 2 — optional Foxglove live telemetry

Use the same `live_telemetry_node` command shown in the ROS-TCP setup. It is independent of the Unity transport.

### Terminal 3 — NavSim web server

```bash
cd /path/to/ubm-trackgen-navsim-js
python3 -m http.server 8085 --bind 127.0.0.1
```

## Verification

Open another terminal, source the same workspace and domain, then use the commands appropriate for the current test:

```bash
export UBM_WS=/path/to/ubm-fsae
source /opt/ros/jazzy/setup.bash
source "$UBM_WS/install/setup.bash"
export ROS_DOMAIN_ID=42

ros2 topic hz /ekf_pose/odom
ros2 topic hz /lidar_points
ros2 topic hz /camera_data
ros2 topic info -v /lidar_points
ros2 topic info -v /camera_data
```

For point-cloud metadata, use one-off queries instead of printing the complete point cloud:

```bash
ros2 topic echo /lidar_points --once --field width
ros2 topic echo /lidar_points --once --field height
ros2 topic echo /lidar_points --once --field point_step
ros2 topic echo /lidar_points --once --field header.frame_id
```

For the custom camera message, first confirm that it is alive without printing image bytes:

```bash
ros2 topic hz /camera_data
ros2 topic info -v /camera_data
```

## Network and firewall

Find Ubuntu's active IPv4 addresses with either command:

```bash
ip -4 -br addr
hostname -I
```

Check whether UFW is enabled:

```bash
sudo ufw status numbered
```

Only open the port required by a remote client. Prefer a rule restricted to the Windows IP address.

| Scenario | Required rule |
| --- | --- |
| Unity uses ROS-TCP | `sudo ufw allow from <WINDOWS_IP> to any port 10000 proto tcp` |
| Unity uses legacy ROS# | `sudo ufw allow from <WINDOWS_IP> to any port 9090 proto tcp` |
| Foxglove runs on Windows | `sudo ufw allow from <WINDOWS_IP> to any port 8765 proto tcp` |

The NavSim web server and loopback-only rosbridge do not need firewall rules because they listen only on `127.0.0.1`.

Avoid broad rules such as `sudo ufw allow 9090/tcp` unless every device on the local network is trusted and needs access. Do not open these ports on a public router.

## Troubleshooting

| Symptom | Check | Resolution |
| --- | --- | --- |
| NavSim shows a connection error | Terminal 2 must show that rosbridge started on `9090` | Confirm `WS_URL` is `ws://localhost:9090`, then click **Reconnect ROS** |
| rosbridge cannot import `ubm_interfaces.msg` | `ros2 interface show ubm_interfaces/msg/LandmarkArray` | Build `ubm_interfaces`, then source `install/setup.bash` before starting rosbridge |
| Unity cannot connect over ROS-TCP | Endpoint output and the Windows host/port | Start the endpoint on `0.0.0.0:10000`; configure Unity with the Ubuntu IP; check UFW |
| Unity works but NavSim odometry is missing | `ros2 topic hz /ekf_pose/odom` | Verify NavSim is in Navigation mode and uses the same `ROS_DOMAIN_ID` through its rosbridge server |
| Foxglove has no camera or LiDAR data | `ros2 topic hz /camera_data` and `/lidar_points` | Start `live_telemetry_node` from a sourced workspace; check the Foxglove URI uses port `8765` |
