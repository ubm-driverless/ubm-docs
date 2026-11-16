# UBM Driverless Documentation

This is the central technical documentation for UBM Driverless, the autonomous driving division of UniBo Motorsport.

The team currently maintains two distinct vehicle platforms:

- **Formula Student Driverless** uses the ROS 2-based `ubm-fsae` stack on the full-size competition vehicle. This remains the correct architecture for FSAE.
- **RoboRacer** uses **AuRoRus**, the current Rust pipeline for the scaled car. The previous ROS-based F1Tenth stack is retained only as legacy documentation.

Do not transfer commands or architectural assumptions between these platforms without checking the platform-specific documentation.

## Where to begin

- New team member or unsure which guide applies: [Start Here](start-here/index.md).
- Working on the Formula Student vehicle: [Formula Student Driverless](platforms/fsae/index.md).
- Working on the scaled car: [RoboRacer and AuRoRus](platforms/roboracer/index.md).
- Looking for cone conventions or recorded-data formats: [Concepts and Standards](concepts-and-standards/index.md).
- Running NavSim or Unity: [Simulator Guides](<guides Simulator/index.md>).
- Contributing code or documentation: [Development](development/index.md).
- Looking for generated ROS package documentation: [API Reference](repositories.md).

## Documentation structure

The site is organized by purpose:

- **Platforms** contains vehicle-specific architecture and operating procedures.
- **Concepts and Standards** contains conventions shared across repositories or workflows.
- **Simulators** contains simulator operation and integration guides.
- **Tools** contains standalone inspection and analysis tools.
- **Development** contains contribution, Git, code-quality, package, and documentation workflows.
- **API Reference** is generated from supported software repositories.

## Current documentation status

The macro structure is being migrated from the old repository-oriented layout. Legacy pages remain available so that historical vehicles and experiments can still be understood, but a legacy guide must not be treated as the current RoboRacer procedure.

The Formula Student operating procedure and architecture note are initial drafts. They must be checked against the deployed vehicle, the current Formula Student rulebook, and the team's approved safety procedures before operational use.

## Contribute

When a procedure, interface, or troubleshooting step changes, update its documentation as part of the same development work. Read [Contributing Documentation](development/documentation.md) and [Documentation Generation](development/documentation-generation.md) before adding or reorganizing pages.

!!! warning
    Everything committed under `docs/` is published publicly. Never add credentials, private keys, tokens, or confidential project information. Repository visibility does not make a secret safe to commit: tokens must be provided through a secret manager or environment configuration and rotated if exposed.

---

<div style="text-align: center; margin: 20px 0;">
    <h2><em>Let's drive the future together!</em></h2>
</div>
