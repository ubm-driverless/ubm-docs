# USEFULL COMMANDS IN SEVERAL OCCASION

 
1. ```bash
    sudo journalctl -u asu_manager.service -f -o cat
    ```
    This command open in the terminal the log of the asu_manager service, usefull to check what is happening in the ros system:

    - journalctl: The core command-line utility used to query and view logs managed by systemd-journald, the logging service for systemd-based Linux distributions.

    - -u asu_manager.service: Filters the log output to display entries exclusively associated with a specific systemd service unit named asu_manager.service.

    - -f: Stands for "follow". It keeps the terminal active and streams new log entries in real-time as they are generated, functioning similarly to tail -f.

    - -o cat: Sets the output format to "cat" mode, which strips away all standard metadata (such as timestamps, hostnames, and process names) and displays only the raw message

2. ```bash
    colcon build 
    ```
    This command compile all the packages in the main repo and create all the executable necessary for the pipeline to run.

    There are several option to add, but the most important is `--packages-select`, which limit the building process to only a restricted number of packages

3. 
