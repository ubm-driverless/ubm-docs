# Connecting to the ASU Outside the Car

This guide explains how to power, reach, and inspect the Autonomous System Unit (ASU) when it has been removed from the car for workshop debugging.

This is not the vehicle startup procedure. When the ASU is installed in the car, follow [Driverless Procedure for Formula Student](DRIVERLESS_PROCEDURE_FSAE.md) instead.

## Safety and scope

!!! warning
    The ASU, its cooling system, batteries, and power supplies are expensive and can be damaged by incorrect wiring, reversed polarity, or an unsuitable supply voltage. Assemble and power the bench setup only with approval from a Driverless manager or the CTO.

- Do not guess the required voltage or current limit.
- Do not connect or disconnect power while the system is energized.
- Check polarity before applying power.
- Make sure the liquid-cooling loop and its fan are operating whenever the ASU is powered.
- Do not bypass safety logic merely to make the software stack start.
- The procedure below is intended for software debugging with the ASU disconnected from the vehicle actuators.

## Required hardware

The exact workshop setup may change. Before powering anything, identify the following parts and verify their connections with a responsible team member.

### ASU assembly

The ASU is the main computer used to run the Driverless stack. In the workshop configuration, identify:

- the ASU enclosure and liquid-cooling loop;
- the **BUT** lead used for the power-button signal;
- the **LED** lead;
- the USB connection for the ZED camera, if the camera is required for the test;
- the positive and negative power leads.

<!-- Add an overview image at ../assets/connect_to_asu_off_car/asu-overview.jpg -->

<!-- Add a close-up of the labelled BUT and LED leads at ../assets/connect_to_asu_off_car/but-led-leads.jpg -->

### ASU network router

Use the black router with four antennas to create the local network between the ASU and the operator laptop.

<!-- Add an image at ../assets/connect_to_asu_off_car/asu-router.jpg -->

### Internet router (optional)

The grey router normally used in the car broadcasts the `UBM_EV_5GHz` network. In the workshop it may provide Internet access through USB tethering from a phone. Internet access is optional for local SSH and ROS 2 debugging.

The connection between the Internet router and the ASU network router depends on the current workshop layout. Verify the correct Ethernet ports and cabling before connecting them.

<!-- Add an image at ../assets/connect_to_asu_off_car/internet-router.jpg -->

### Power and cooling equipment

Use only the approved batteries, power supplies, chargers, and cooling-system supply for the ASU bench setup. Confirm the required voltage, current limit, polarity, and grounding before switching on any supply.

<!-- Add a labelled image at ../assets/connect_to_asu_off_car/power-and-cooling.jpg -->

## 1. Prepare the bench setup

1. Place the ASU on a stable, dry, non-conductive surface with unobstructed airflow.
2. Inspect the cooling loop for loose fittings, leaks, or trapped cables.
3. Connect the cooling-system power according to the approved workshop setup.
4. Connect the ASU to the black network router using the designated Ethernet cable.
5. Connect the camera and other sensors only if they are required for the test.
6. With all supplies still switched off, connect the ASU power leads and verify their polarity.
7. Have a second team member check the setup before applying power.

## 2. Power on the ASU

1. Switch on the approved power and cooling supplies.
2. Locate the two power-button signal contacts inside the female end of the lead labelled **BUT**.
3. Briefly bridge only those two contacts with a small insulated flat-head screwdriver, then remove the screwdriver immediately. This emulates a momentary press of the computer power button.
4. Confirm that the ASU starts and that the cooling system remains operational.

!!! danger
    Do not bridge unidentified contacts, power terminals, or battery terminals. If the BUT connector or its pinout does not match this description, stop and ask a responsible team member.

## 3. Connect the operator laptop

Connect the laptop to the same local network as the ASU. Depending on the current setup, this may be the Wi-Fi network broadcast by the ASU router or a wired Ethernet connection.

The ASU is normally configured with the static address `192.168.1.155`. Test it first:

```bash
ping 192.168.1.155
```

If the address does not respond, scan the local `/24` subnet from a laptop connected to the same network:

```bash
nmap -sn 192.168.1.0/24
```

`192.168.1.0/24` denotes the subnet from `192.168.1.0` to `192.168.1.255`. Scan only networks that you are authorized to test.

## 4. Connect over SSH

Connect using the ASU account and enter its password when prompted:

```bash
ssh ubm@192.168.1.155
```

If the ASU uses a different address, replace `192.168.1.155` with the address found in the previous step.

## 5. Inspect the automatic startup

The `asu_manager` systemd service normally starts the Driverless stack automatically. Outside the car, vehicle-side devices such as the VCU may be unavailable, so the manager can report connection failures or restart the stack.

Check the service state:

```bash
sudo systemctl status asu_manager.service
```

Follow its live log:

```bash
sudo journalctl -u asu_manager.service -f -o cat
```

Press `Ctrl+C` to stop following the log. The command stops only the log view; it does not stop `asu_manager`.

On the current `ubm-fsae` `main` branch, the deployed repository and relevant files are:

```text
/home/ubm/ubm-fsae/
├── launch/asu_manager.yaml
└── launch/bringup.yaml
```

For off-car testing, verify that `workshop_testing` is enabled in `launch/asu_manager.yaml`:

```yaml
workshop_testing: true
```

The normal startup list in `launch/bringup.yaml` includes both `vcu_tcp_communication` and `asu_watchdog`. With the VCU disconnected, the TCP node cannot connect to `192.168.1.88`; moreover, the watchdog expects a continuous `/vcu/data` stream. For an approved off-car test, comment out both entries in the `startup` section:

```yaml
startup:
  # - vcu_tcp_communication
  - odometry
  # ...other nodes required for the test...
  # - asu_watchdog
```

Keep only the sensors and startup nodes that are physically present and required for the test. For example, also disable a camera or LiDAR driver when its corresponding sensor is disconnected.

!!! warning
    This is a bench-only configuration for an ASU disconnected from the car and its actuators. Do not use it in the vehicle. Restore `vcu_tcp_communication`, `asu_watchdog`, and every required sensor node before returning the ASU to the car. Keep workshop-only changes out of competition configuration.

After an approved configuration change, restart the service with:

```bash
sudo systemctl restart asu_manager.service
```

Then follow the journal again and verify that the expected nodes start.

## 6. Connect Foxglove

The current stack does not require the standard `foxglove_bridge` package. `live_telemetry_node`, which is part of the normal startup list, provides its own Foxglove WebSocket server on port `8765`.

Confirm that `live_telemetry_node` is present in the `startup` section of `launch/bringup.yaml` and that it started successfully in the `asu_manager` journal.

If you need to run it manually while `asu_manager` is stopped, use a separate SSH terminal:

```bash
cd /home/ubm/ubm-fsae
source install/setup.bash
ros2 run live_telemetry_node live_telemetry_node \
  --ros-args --params-file launch/live_telemetry_node.yaml
```

In Foxglove Studio:

1. Select **Open connection**.
2. Select **Foxglove WebSocket**.
3. Enter:

    ```text
    ws://192.168.1.155:8765
    ```

Port `8765` is fixed by the current `live_telemetry_node` implementation. Keep the terminal running for the duration of the connection when the node was started manually.

## 7. Mission-state testing without the car

In the car, mission selection and Autonomous System Master Switch (ASMS) state are normally received from the VCU. With the ASU disconnected from the car, those messages are absent; consequently, `asu_manager` may remain in its startup state and nodes that wait for the readiness service may not proceed.

Emulating VCU messages is an advanced software test. The commands below match the current `ubm-fsae` `main` branch. Before using them on another revision, verify the topic, message type, and constants in `ubm_interfaces/msg/VCUData.msg`.

First emulate a VCU sensor packet with the ASMS enabled:

```bash
ros2 topic pub --once /vcu/data ubm_interfaces/msg/VCUData \
  "{vcu_data_type: 2, asms_on: 1}"
```

Then select the mission. The following example selects Autocross:

```bash
ros2 topic pub --once /vcu/data ubm_interfaces/msg/VCUData \
  "{vcu_data_type: 0, mission: 3}"
```

Once `asu_manager` has received both `asms_on: 1` and a mission-selection packet, it locks the selected mission and starts the corresponding section from `launch/bringup.yaml`.

The mission identifiers in the current message definition are:

| Value | Mission |
| ---: | --- |
| `0` | Manual driving |
| `1` | Acceleration |
| `2` | Skidpad |
| `3` | Autocross |
| `4` | Trackdrive |
| `5` | EBS test |
| `6` | Inspection |

!!! danger
    Publish simulated VCU data only when the ASU is physically disconnected from the car and all actuators. These one-shot messages replace only the state needed to start the selected software nodes; they do not reproduce the continuous VCU sensor stream. Do not reuse numeric mission values from another software revision without checking its message definition.

## Troubleshooting

| Symptom | Check | Suggested action |
| --- | --- | --- |
| The ASU does not power on | Power supply, polarity, BUT lead, and cooling-system power | Switch everything off and have the wiring checked; do not try other contacts |
| `192.168.1.155` does not respond | Laptop address, router connection, and subnet | Reconnect to the ASU network and use `nmap -sn 192.168.1.0/24` |
| SSH reports `Connection timed out` | Network path and ASU address | Check the router and confirm the address with a subnet scan |
| SSH reports `Connection refused` | SSH service on the ASU | Check the local ASU console or ask the system maintainer |
| `asu_manager` repeatedly restarts | Missing VCU or another required node | Read the journal and use the approved workshop configuration |
| Foxglove cannot connect | `live_telemetry_node` and port `8765` | Confirm the node is running and the laptop is on the ASU network |
| Expected ROS 2 topics are missing | ROS environment and selected bringup nodes | Source the deployed workspace and inspect the manager log |

## Shutdown

1. Stop any manually launched ROS 2 processes with `Ctrl+C`.
2. Shut down the ASU cleanly over SSH:

    ```bash
    sudo shutdown now
    ```

3. Wait until the operating system has shut down and the ASU is no longer active.
4. Switch off the ASU power supply and then the cooling-system supply according to the approved bench procedure.
5. Disconnect batteries and cables only after all supplies are off.
