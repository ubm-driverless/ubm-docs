# FSAE Architecture Note

!!! warning "Architecture documentation in progress"

    This page is an initial map of the current `ubm-fsae` ROS 2 pipeline. It
    must be checked against the deployed ASU configuration and kept aligned
    with `launch/bringup.yaml`, package interfaces, and mission-specific
    launch configuration.

## System boundary

The Formula Student Driverless stack runs on the ASU and exchanges vehicle
state and commands with the VCU. Sensors publish camera, LiDAR, and vehicle
data into the ROS 2 graph. Mission-specific nodes process that data through
perception, localization, planning, and control. Diagnostics, live telemetry,
and rosbag recording observe the same graph.

```text
ZED / LiDAR / VCU
        │
        ▼
Perception and sensor processing
        │
        ▼
Localization and SLAM
        │
        ▼
Planning and mission logic
        │
        ▼
Control ───────────────────────► VCU

Cross-cutting: asu_manager, asu_watchdog, diagnostics,
live_telemetry_node, bag_recorder_node
```

## Mission lifecycle

`asu_manager` starts the common startup nodes, receives mission and vehicle
state through the VCU interface, and launches the nodes configured for the
selected mission. `asu_watchdog` checks readiness and runtime health. The exact
nodes for each mission are defined by the active `launch/bringup.yaml` and its
package parameter files.

## Documentation still required

This note does not yet define the authoritative topic graph, QoS contracts,
TF tree, rates, timing assumptions, failure propagation, or ownership of each
component. Those items should be added from the deployed configuration and
verified with the responsible subsystem maintainers.
