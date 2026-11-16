# RoboRacer

RoboRacer is the current name of the competition previously known as F1Tenth.
The supported UBM software stack is **AuRoRus**, written in Rust. The former
ROS-based `ubm-f1tenth` workflow is no longer the current architecture.

## Current stack: AuRoRus

AuRoRus covers the complete small-scale autonomous-driving pipeline in one
Rust crate, including simulation, sensors and actuators, mapping, localization,
planning, autonomous control, telemetry, replay, benchmarking, calibration,
and a browser GUI.

Start with the [AuRoRus overview](aurorus.md), then use the detailed
documentation maintained in its repository.

## Legacy ROS stack

The previous F1Tenth ROS guides are preserved for historical reference,
maintenance, and recovery of old installations. They are not the source of
truth for current RoboRacer development or operation.

[Open the legacy ROS documentation](legacy-ros/index.md).
