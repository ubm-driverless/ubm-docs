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

4. Check that `asu_manager` is running (see the journalctl command). 
5. Verify critical parameters, such as `workshop_testing` in `asu_manager.yaml`.

## 2. Connect to the VCU

The first node to start after the asu_manager is the vcu_tcp_communication node, if for any reason the node can't connect the asu_manager stops, so watch out for that node.  
The ip of the VCU should be 192.168.1.88, if for some reason changes it must changed too in the yaml of the node   
If you start seeing on the terminal something like "XXXX zeros message have been sent to the VCU", that means that the ASU and VCU are connected and communicating.

## 3. Power on the RES

1. Insert the battery pack to power on the RES.
2. Check via Labview that the res is online and communicating.


## 4. Driverless activation sequence

1. Turn on the TSMS.
2. Turn on the ASMS.
3. Select the mission on the dashboard.
4. Press the TS ON button.
5. Confirm that the vehicle is ready to enter driverless mode (The ASSI should be orange steady).
6. Press the start button on the RES.
7. The car is running now



