# Checklists

1. **Battery Levels**

    The battery voltage needs to be between 11.4V and 12.4V in order to preserve their quality over time. To check the battery voltage there are 2 ways:
        - Using a voltmeter
        - Plugging the battery to the charger. There is a section that shows the voltage of each cell.

2. **Turn on the devices**

    1. Turn on the router
    2. Turn the main power switch of the car to `ON`, and wait for the car to boot and connect to the network.

    > [!note]
    > If the car does not connect to the router or to the correct network, it may be necessary to plug a keyboard and a mouse to the car in order to manually connect it the the right network

3. **Car Connection**

    - Connect you computer to the same local network in which the car is connected
    - SSH to the car:

        ```bash
        ssh ubm@192.168.1.2  # for Philly
        ssh ubm@192.168.1.3  # for Ben
        ```

        At this point you should see the welcome bash prompt. It is recommended to read it periodically. You will find there the main commands to use and useful informations.

    - A VNC server should automatically start, ad you should be able to see the car desktop interface by using a VNC client like [tigervnv](https://tigervnc.org/): Connect by using the IP address of the car and the port `5901`
        - If the VNC server does not automatically start run the following command:

        ```bash
        vncserver
        ```

4. **Sync the ubm-f1tenth repository with the desired state**

    To pull the ubm-f1tenth repository an internet connection is needed.

    **Connect the car to the internet**
    - Plug your smartphone to the router with a USB cable
    - Enable USB-tethering on your phone
    - Wait a little and check the car connection by pinging some website.

    ```bash
    ping 1.1.1.1
    ```

    > [!note]
    > if the car does not connect to internet, it may be necessary to reboot the router.

    - Once the car is connected to internet it is recommended to sync the github repo
