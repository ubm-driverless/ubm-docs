# Troubleshooting

This guide provides solutions for common issues and important checks during operation.

## Missing or Outdated Build Artifacts

**Symptoms:**

- Node execution fails
- Missing executables or libraries.

**Solution:**

   1. Rebuild and source the workspace

      ```bash
      rebuild_ws
      src
      ```

---

## Incorrect Environment Setup

**Symptoms:**

- Missing packages or commands
- Errors related to sourcing or dependencies

**Solution:**

   1. Source the environment

      ```bash
      src
      ```

   2. Verify if the required package exists in the `~/f1tenth_ws/src` directory:

      ```bash
      ls ~/f1tenth_ws/src
      ```

      If the package is missing, create a symbolic link to the package location and build the workspace.

      ```bash
      ln -s /path/to/package ~/f1tenth_ws/src/
      build_ws
      ```

---

## Localization or Mapping Issues

**Symptoms:**

- Localization or mapping does not work.
- Nodes or RViz fail to display map or lidar scans.

**Solution:**

   1. Kill all running nodes except the bringup node.
   2. Close RViz and open it again before running other nodes.

   If the issue persists

   1. Kill all running nodes included the bringup node.
   2. Close RViz and open it again before running other nodes.

   If the issue still persists

   1. Kill all running nodes and reboot the car

      ```bash
      sudo reboot
      ```

   2. Restart the modem/router

If none of the above works

- *Enjoy* debugging 😇
