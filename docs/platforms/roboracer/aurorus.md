# AuRoRus Overview

AuRoRus stands for **Autonomous RoboRacer Rust**. It is the current UBM stack
for RoboRacer cars and replaces the previous ROS F1Tenth architecture.

Repository:
[`ubm-driverless/AuRoRus_UBM`](https://github.com/ubm-driverless/AuRoRus_UBM)

## Scope

The `aurorus` crate currently includes:

- a vehicle and LiDAR simulator with track generation;
- SLAM, scan-matching localization, particle-filter localization, and
  dead reckoning;
- race-line planning and speed profiles;
- reactive, path-following, overtaking, and MPC controllers;
- VESC, Hokuyo LiDAR, and joystick integration for the physical car;
- a browser GUI shared by simulation and the real car;
- debug-session replay, benchmarks, mapping and localization labs;
- guided car calibration and hardware probes.

## Build and run

AuRoRus requires Rust `1.95` or newer. From the repository root:

```bash
cargo build --release
./target/release/web_gui
```

Open `http://localhost:1999`. Without a configured `CAR_NAME`, the application
runs in simulation. Car configuration, calibration, maps, and generated
session data are described in the repository documentation.

## Documentation ownership

Detailed AuRoRus architecture and executable documentation remains in the
AuRoRus repository next to the code. `ubm-docs` should provide platform-level
onboarding and operational procedures, while linking to the repository for
implementation details that change with the crate.

Key repository documents include:

- `documentation/core_framework.md`;
- `documentation/web_gui.md`;
- `documentation/car_calibration.md`;
- `documentation/slam.md`;
- `documentation/planning.md`;
- `documentation/autonomous_algorithms.md`;
- `tutorials/`.
