# UBM Driverless Documentation

Welcome to the central technical documentation for UBM Driverless, the
autonomous driving division of UniBo Motorsport at the University of Bologna.

The team develops autonomous vehicles for Formula Student Driverless and
F1Tenth competitions. This website collects the procedures, architecture
notes, hardware references, simulator guides, and generated software
documentation used to develop and operate those vehicles.

## Explore the documentation

### Setup

Start with the [Setup section](setup/index.md) to prepare the development environment,
build the software, and configure the tools used by the team.

### Formula Student Driverless

The [FSAE guides](<guides FSAE/index.md>) cover Formula Student procedures, hardware,
GitHub workflow, and operation of the full-size driverless vehicle.

### F1Tenth

The [F1Tenth guides](<guides F1tenth/index.md>) cover the small-scale autonomous
platform, including setup, hardware, mapping, visualization, and real-world
operation.

### Simulators

The [Simulator guides](<guides Simulator/index.md>) explain how to create and run
simulated scenarios with NavSim and Unity, connect them to ROS 2, and inspect
the generated data.

### Software repositories

The [Repositories section](repositories.md) collects package-level references
generated from the UBM Driverless ROS repositories, including Python API
documentation and C++ documentation generated with rosdoc2.

## Recommended starting points

- New team members: begin with the [development setup](setup/SETUP.md).
- Working with the Formula Student vehicle: open the
  [FSAE guides](<guides FSAE/index.md>).
- Working with the F1Tenth platform: open the
  [F1Tenth guides](<guides F1tenth/index.md>).
- Testing SLAM and downstream nodes in 2D: read the
  [NavSim TrackGen Simulator guide](guides%20Simulator/NAVSIM_TRACKGEN_SIMULATOR.md).
- Testing simulated LiDAR, stereo-camera data, and ROS odometry in 3D: read the
  [Unity Simulator guide](guides%20Simulator/UNITY_SIMULATOR.md).

## Contribute

This documentation is maintained alongside the software. If a procedure,
interface, or troubleshooting step changes, update the relevant page as part
of the same development work.

Read [How to Add Documentation](guides%20F1tenth/ADD_DOCUMENTATION.md) before
creating or reorganizing pages. Details about the automatic MkDocs and GitHub
Pages deployment are available in
[Documentation Generation](setup/DOCS_GENERATION.md).

!!! warning
    Everything committed under `docs/` is published publicly. Never add
    credentials, private keys, tokens, or confidential project information.

---

<div style="text-align: center; margin: 20px 0;">
    <h2><em>Let's drive the future together!</em></h2>
</div>
