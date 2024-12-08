# Bringup

The bring up command starts the ros2 core nodes.

To launch bringup run:

```bash
launch bringup.py
```

Connect the joystick (of the right car) by pressing the PlayStation button.

- If the joystick does not connect run

     ```bash
     connect-controller-philly # to connect to the Philly joystick
     connect-controller-ben # to connect to the Ben joystick
     ```

In the logs of the bringup command check for the following line:

`scan=1 connected, joy=1 connected, vesc=1`

If all the 3 are equal to 1 than it means that the car:

- it receives the scans from the lidar
- it is connected to a joystick
- the vesc is connected and working

The car now can be moved with the joystick:

- Hold L1 for slow movement.
- Hold L2 for fast movement.
- Use the left stick to control forward and backward motion.
- Use the right stick to steer the car.

!!! warning

    If an issue arises to stop the car immediately press L1 repeatedly.

!!! tip

    When bringup is running, it is possible to check the battery voltage by running `ros2 topic echo /sensors/core/`.

    **Important Note:** The voltage reading has a bias of approximately +0.2V higher than actual voltage