# Cone Path Planner Node

## Node Purpose
The `ConePathPlannerNode` is a ROS 2 node implementing the reactive path planning algorithm starting from the work of FaSTTUBe (Formula Student Team TU Berlin), implemented in C++ and using Armadillo library. 

## Topics

### Subscribed Topics
- **`/map`** (`ubm_interfaces::msg::ConeArray`): Provides the cones data as an array.
- **`/car_pose`** (`geometry_msgs::msg::Pose`): Provides pose estimation.

### Published Topics
- **`/raceline`** (`ubm_interfaces::msg::PathLimits`): Publishes the planned path, left track limits and right track limits.

## Functionality

This node performs **cone-based path planning** using ROS 2, processing the detected cones and the vehicle's pose it generates the centerline path and track limits. The key steps are:

1) **Cone Sorting**: the process of sorting a set of cones into a sequence representing the track direction. Left and right sides are sorted independently from each other and are combined in the final step. It uses a Breadth-first search (BFS) algorithm to explore all configurations, then chosen using cost functions.
2) **Cone Matching**: the process of matching the ordered cones, in order to connect them and calculate the center line. It uses the possibility to create virtual cones to connect unmatched cones for a smoother path calculation.
3) **Path Calculation**: the final process of creating the raceline. Using the cernterpoints calculated uses a spline to create the path.

Resume of logical structure:

```
cone_path_planner_node
│
├── cone_sorting
│   ├── calculate_configurations
│   ├── calculate_costs
│   │   └── nearby_cone_search
│   │       └── cost_utils
│   └── combine_traces
│
├── cone_matching
│   └── funtional_cone_matching
│       └── matching_utils
│
└── spline_and_polinomial --> Path calculation
```
Almost all the .cpp are using ```utils.cpp``` (containing the cone types) and ```arma_conversions.cpp```.

---

## Hyperparameters

The node exposes several configurable parameters:

| Parameter                    | Type    | Default     | Description                                                        |
|------------------------------|---------|-------------|--------------------------------------------------------------------|
| `disable_print_timeout`      | int     | `100`       | Throttle debug/info print messages (ms).                           |
| `use_unknown_cones`          | bool    | `false`     | Whether to use cones with unknown color.                           |
| `max_n_neighbors`            | int     | `6`         | Maximum number of neighbors, used for creating the Adjacency Matrix.                 |
| `max_length`                 | int     | `15`        | Maximum length of a cones configuration.                            |
| `max_dist`                   | float   | `20.0`      | Maximum distance between cones to be considered neighbors.         |
| `max_dist_to_car`            | float   | `8.0`       | Maximum distance to the car, used to calculate the first cones near the car.             |
| `max_dist_to_neighbor`       | float   | `1.5`       | Maximum distance to a neighbor cone, used for filtering in between cones.                               |
| `threshold_directional_angle`| float   | `3.0`       | Directional angle threshold (radians).                             |
| `threshold_absolute_angle`   | float   | `2.094395`  | Absolute angle threshold (radians, 120°).                          |
| `threshold_other_side_angle` | float   | `0.174533`  | Tolerance for cones on the wrong side, used to check expected side (radians, 10°).              |
| `threshold_filter_angle`     | float   | `2.79253`   | Angle threshold used for filtering in between cones (radians, 160°).                     |
| `min_track_width`            | float   | `0.5`       | Minimum allowed track width.                                       |
| `max_search_range`           | float   | `2.0`       | Maximum search range for cone matching.                            |
| `max_search_angle`           | float   | `0.5`       | Maximum search angle for cone matching.                            |
| `debug`                      | bool    | `true`      | Enable debug output.                                               |
| `cones_topic_`               | string  | `"/map"`    | Topic for cone data.                                         |
| `pose_topic_`                | string  | `"/car_pose"`| Topic for car pose.                                            |
| `reactive_raceline_topic_`   | string  | `"/raceline"`| Topic for publishing the planned path and track limits.            |

---

## References
- FaSSTUBe repository: https://github.com/papalotis/ft-fsd-path-planning/tree/main
- Armadillo documentation: https://arma.sourceforge.net/docs.html
- ROS 2 documentation: https://docs.ros.org

