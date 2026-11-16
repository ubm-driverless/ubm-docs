# Live Telemetry Node

A dedicated real-time telemetry gateway between the ROS2 graph and Foxglove Studio.

## Problem

Raw ROS2 data streams are not suitable for low-latency, bandwidth-constrained remote visualization during vehicle operation:
- High end-to-end latency making real-time monitoring ineffective
- Network saturation from raw, high-frequency camera streams
- No control over telemetry rate, resolution, or payload size
- Live telemetry competing with perception, control, and logging workloads

## Solution

`live_telemetry_node` explicitly shapes outbound data before streaming over WebSocket:

1. **Message downsampling** – Publish every Nth message to reduce frequency
2. **Image resizing** – Scale images to target resolution
3. **JPEG compression** – Optional lossy compression for bandwidth reduction
4. **Gateway mode** – Forward all ROS topics with configurable blacklisting

## Architecture

```
┌─────────────────┐     ┌─────────────────────────────┐     ┌─────────────────┐
│    ROS2 Graph   │────▶│    live_telemetry_node      │────▶│ Foxglove Studio │
│                 │     │                              │ WS  │   (Remote)      │
│  /cameraData    │     │  ┌───────────────────────┐  │     └─────────────────┘
│  /odom          │     │  │   Specialized Handlers│  │
│  /imu/data      │     │  │  (image processing)   │  │
│  /control/cmd   │     │  │  ┌─────────────────┐  │  │
│  ...            │     │  │  │ CameraDataHandler│  │  │
│                 │     │  │  │ YourCustomHandler│  │  │
│                 │     │  │  └─────────────────┘  │  │
│                 │     │  └───────────────────────┘  │
│                 │     │                              │
│                 │     │  Gateway (unified forwarding)│
│                 │     │  - Explicit topics          │
│                 │     │  - Auto-discovery           │
└─────────────────┘     └─────────────────────────────┘
```

## Quick Start

### Forward All Topics (Auto-Discovery)

```yaml
gateway_enabled: true
gateway_blacklist: ["/image", "/tf"]  # Exclude high-bandwidth topics
```

### Forward Specific Topics with Custom Rates

```yaml
gateway_explicit_topics: ["/odom", "/imu/data", "/vehicle/status"]
gateway_explicit_ratios: [5, 10, 1]       # Downsample ratios
gateway_explicit_queue_sizes: [10, 10, 10]
```

**No message types needed!** The gateway auto-discovers types from the ROS graph.

## Specialized Handlers

Use handlers only when you need **custom processing** (e.g., image compression).
For simple forwarding, use the gateway instead.

### Built-in Handlers

| Type | Description |
|------|-------------|
| `camera_data` | Image scaling, JPEG compression, protobuf conversion |
| `point_cloud` | Voxel-grid downsampling, radius crop, protobuf PointCloud |

### Creating a Custom Handler

1. Create a handler class implementing `TopicHandler` (header + source).

2. Register it in `src/register_handlers.cpp`:

```cpp
#include "live_telemetry_node/my_sensor_handler.hpp"

// Inside registerBuiltinHandlers():
registry.registerHandler("my_sensor",
    [](rclcpp::Node* n, const HandlerConfig& c, FoxgloveLogger* l) {
      return std::make_unique<MySensorHandler>(n, c, l);
    });
```

3. Add the source to `CMakeLists.txt`:

```cmake
set(TELEMETRY_NODE_SOURCES
    src/live_telemetry_node.cpp
    src/register_handlers.cpp
    src/camera_data_handler.cpp
    src/my_sensor_handler.cpp  # Add your handler
    src/gateway.cpp
)
```

4. Configure in YAML:

```yaml
handler_names:
  - "my_sensor_instance"

my_sensor_instance:
  type: "my_sensor"
  topic: "/my_sensor/data"
  downsample_ratio: 5
```

## Configuration

Key parameters in `launch/live_telemetry_node.yaml`:

### Gateway Configuration (Recommended for most topics)
```yaml
# Forward specific topics (message types auto-detected)
gateway_explicit_topics: ["/odom", "/imu/data"]
gateway_explicit_ratios: [5, 10]
gateway_explicit_queue_sizes: [10, 10]

# Or enable auto-discovery for all topics
gateway_enabled: true
gateway_blacklist: ["/image", "/tf", "/diagnostics"]
```

### Handler Configuration (Only for custom processing)
```yaml
handler_names: ["camera"]
handler_types: ["camera_data"]
handler_input_topics: ["/cameraData"]
handler_downsample_ratios: [3]
```

### Image Settings (for camera_data handlers)
- `image_target_width/height` – Target resolution
- `jpeg_enabled` / `jpeg_quality` – Compression settings

## Build & Run

```bash
colcon build --packages-select live_telemetry_node
ros2 run live_telemetry_node live_telemetry_node \
  --ros-args --params-file launch/live_telemetry_node.yaml
```

> **Important:** For Foxglove Studio to decode messages correctly, every message
> package used in the system (e.g., `ubm_interfaces`, `ubm_interfaces`, `sensor_msgs`) must
> be **built and sourced** in the same environment where `live_telemetry_node`
> runs. The node reads `.msg` files from the ament share directory at runtime to
> provide schemas to Foxglove. If a message package is not installed, the channel
> will appear in Foxglove but display a "Schema is empty" error.
>
> This is fully automatic — no code changes are needed when new message types are
> introduced. Just ensure the package is part of the workspace build.

## Performance Replay (Docker)

Use this when iterating on point cloud performance with a real rosbag.

```bash
# From repo root
bash live_telemetry_node/test/docker_replay_perf.sh /Users/aminnami/Desktop/LidarTest1
```

What this command does:
- Builds a ROS2 Jazzy test image defined in `live_telemetry_node/test/Dockerfile.perf`
- Mounts your repository and bag directory into the container
- Builds `live_telemetry_node` in-container with `colcon`
- Runs the node with `live_telemetry_node/test/live_telemetry_node.perf.yaml`
- Replays the rosbag and prints timing logs in terminal

Main perf log markers from `PointCloudHandler`:
- `Perf[point_cloud/downsampler]` – pass/drop decision time
- `Perf[point_cloud/voxel_stage]` – ROS->PCL convert, crop, voxel, PCL->ROS timings
- `Perf[point_cloud/pack]` – packing and protobuf serialization timings
- `Perf[point_cloud/pipeline]` – end-to-end forwarded message timing
