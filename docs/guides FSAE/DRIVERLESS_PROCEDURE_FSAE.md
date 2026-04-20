# Driverless Procedure for Formula Student

Use this guide as the standard startup sequence for the driverless system. Adapt the steps to your specific car setup if the hardware layout or naming differs.

## 0. Pre-procedure checklist

Before powering anything on, verify that the following components are installed and connected correctly:

- ASU
  - Power connection
  - Modem connection
  - ZED connection
  - Button and LED connection
- Modem is connected and working
- VCU is connected and working
- Battery pack is installed in the car
- Steering actuator is installed in the car

## 1. Connect to the ASU

1. Connect to the car Wi-Fi.
2. Scan the network to find the ASU IP address:

    ```bash
    nmap -sP 192.168.1.0/24
    ```

3. Connect to the ASU over SSH:

    ```bash
    ssh ubm@"<asu_ip>"
    ```

4. Check that `asu_manager` is running.
5. Verify critical parameters, such as `workshop_testing` in `asu_manager.yaml`.

## 2. Connect to the VCU

1. Connect to the VCU using the standard team procedure.
2. Confirm that the VCU is reachable and ready before continuing.

## 3. Power on the RES

1. Insert the battery pack to power on the RES.
2. Confirm that the system reaches the expected powered state.

## 4. Check communication between the VCU and ASU

1. Verify that communication between the VCU and ASU is active.
2. Confirm that the expected telemetry or heartbeat signals are present.

## 5. Driverless activation sequence

1. Turn on the LVMS and TSMS.
2. Turn on the ASMS.
3. Select the mission on the dashboard.
4. Turn on the TS.
5. Confirm that the vehicle is ready to enter driverless mode.



