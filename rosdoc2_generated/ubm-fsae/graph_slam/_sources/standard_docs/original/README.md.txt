# Graph SLAM ROS2 Node

A ROS2 implementation of Graph-based SLAM using the `g2o` optimization framework. This node fuses odometry and landmark detections (e.g., cones) to build a consistent map while detecting loop closures.

---

## Features

- **Pose Graph Construction**: SE2 poses and landmark vertices.
- **Data Association**: KD-Tree-based nearest-neighbor search for landmark matching.
- **Loop Closure Detection**: Automatically detects loops when revisiting landmarks.
- **Incremental Optimization**: Balances accuracy and computational efficiency.
- **Visualization**: Publishes landmarks and robot poses as ROS markers.
- **Covariance Handling**: Configurable sensor uncertainty parameters.

---

## Dependencies

- **ROS2 Humble** (or newer).
- `g2o` (Graph Optimization Library), follow these [instructions](https://github.com/RainerKuemmerle/g2o) to install it
- `PCL` (Point Cloud Library).
- ROS2 Packages: `tf2`, `pcl_conversions`, `visualization_msgs`.

---

## Usage

1. **Launch the node**:
   ```bash
   ros2 launch graph_slam graph_slam.launch.py
   ```  
  or uncomment the line in `launch/bringup.py` and launch everything.

2. **Required Topics**:
   - `/ekf_pose/odom` (Odometry input).
   - `/detections_info` (Landmark detections).

3. **Visualization**:
   - View map in RVIZ2: `/slam_map` (MarkerArray).

---

## Parameters
Most of the parameters must be modifies, as the first two of them are not being used at all given the latest refactors
| Parameter                  | Description                                      | Default               |
|----------------------------|--------------------------------------------------|-----------------------|
| `euclidean_threshold`      | Max distance (meters) for landmark association   | 1.5                   |
| `sensor_covariance`        | Sensor measurement covariance matrix              | [1.0, 0.0, 0.0, 1.0] |
| `loop_closure_min_id_diff` | Minimum pose ID gap for loop closure             | 400                   |

---

## Code Structure

```
graph_slam/
├── include/graph_slam/graph_slam.hpp  # Class declaration
├── src/graph_slam.cpp                 # Main implementation
└── CMakeLists.txt
```

### Key Components

1. **Optimizer Setup**:
   - Levenberg-Marquardt solver with dynamic block sizing.

2. **Odom Callback**:
   - Adds new pose vertices.
   - Creates odometry edges between consecutive poses.

3. **Landmark Handling**:
   - KD-Tree for efficient landmark retrieval.
   - Mahalanobis distance-based data association.
   - Automatic loop closure detection.

4. **Optimization Strategy**:
   - Incremental optimization every 10 poses.
   - Full optimization on demand.

---

## Visualization on RVIZ 
*Red spheres: Landmarks, Green arrows: Robot poses.*

---

## Limitations & TODOs

- [ ] Implement proper odometry covariance handling.
- [ ] Add multi-threading support.
- [ ] Improve landmark association logic.
