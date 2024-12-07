# Run Real World Car

This guide provides a comprehensive workflow for operating the real-world car.

<!-- TODO: LEGENDA -->

Start-up the car

`ssh 192.168.1.2` (philly)
`ssh 192.168.1.3` (ben)

```
connect-controller-philly
launch bringup.py
```

- mapping

```
launch localize_launch_mit.py
launch control.py
```

(raceline will pop up in rviz)

<!-- # Shut down procedure
- CTRL-C everything, flick switch, remove battery


-----STILL NOT COVERED BY US

## At any time if you need to check battery

- it has to be after bringup
- ros2 topic echo /sensors/core
- [Note] The voltage is biased (about 0.2 higher). 

## Clean up the workspace 
rm -r build/ build_old/ car_setup.sh data get_parameter_or install/ install_old log/ log_old

# Check if repo is up to date
(if you have any problems with the router go to 192.168.1.1/ **user**: root **pass**: ubm12345)
- to check if up to date no internet: git log -l see last commit if it matches the one of remote repo
- if not up to date:
-- connect with phone with usb cable (**ON USB PORT 1**), tether internet and pull


# Controller Commands
- Manual mode: hold L1 and drive
- Gap-follower: X
- Pure-pursuit: O

# Change mapping and localization parameters
- For mapping: /home/ubm/repo/src/f1tenth_system/config/mapper_params_online_async.yaml
- For localization: /home/ubm/repo/launch/localization.py
- Do: Colcon Build from f1tenth_ws and source again with src 

notes:
- Always read help instructions for launch
    - if something is not working try rebuilding with the command `build_ws` and source by running `src` -->
