# How to connect to router to the internet using USB tethering
The router (TP-Link TP-W8970 v1) runs the latest release of [openwrt](https://openwrt.org). This allows us to install packets needeed for the RNDIS protocol, used in USB tethering (`kmod-usb-net-rndis`) and eventually other packets that might be needed in the future for other vendors' USB tethering implementation (like Huawei phones or iPhones).
## From and android phone
The setup should be plug-and-play:
  1. Connect your phone with a USB-C to USB-A cable to the USB1 port of the router (the one closest to the ethernet ports).
  2. On your phone, there should a notification saying "Cable connect for charging, tap to change". Tap the notification. A menu should appear and you should select "USB Tethering" from the list. This step might look different on some usb phones with modified versions of android (Samsung, Xiaomi, Oppo): in this case refer to the manufacturer's instructions on how to enable USB tethering.
  3. After some seconds, internet should work for every device connected to the UBM wifi network.

If after a minute or so the internet is not working, check that you have done the following:
 - You have connected the phone in the USB1 port, not USB2
 - You have properly selected the usb tethering option from the connection settings on you phone.

To check the latter you could try to log in the router LuCi web-ui: 
 1. Make sure you are connected to the UBM wifi.
 2. Open a browser and visit the ip `192.168.1.1`
 3. Log in using the credentials `root` and `[REDACTED]`. The LuCi overview page should appear (it might be useful in other situations, for example to list all devices connected to the wifi).
 4. Head over the `Network -> Interfaces` tab at the top right.
 5. If the interface `usb0` shows no `IPv4` address, no `TX` or `RX` data, that means that you have not correctly enabled USB tethering on your android phone or you don't have a phone that uses the RNDIS protocol.

## From an iPhone/other phone not using the RNDIS protocol
This setup has not been tested. You should refer to the [openwrt documentation](https://openwrt.org/docs/guide-user/network/wan/smartphone.usb.tethering) and update this document if you get a working connection.

# How to connect the router to the internet by connecting the router itself to a local wifi
It is possible to connect the router to anoher wifi network and use that as an uplink internet connection. This process is more involved and requires a more complicated setup, since the router's subnet and the uplink wifi's subnet must be different (i.e. you can't connect to wifi networks using a `192.168.1.0/24` subnet because this is the one that the UBM router uses). Changing subnet is not recommended since the cars are supposed to have static ip addresses (`192.168.1.2` for philly, `192.168.1.3` for ben).

Note that it is not possible to carry out this procedure with ALMAWIFI because it blocks any attempt of sub-NATting the network.

If you wish to continue with this, make sure to have a local backup of the router configuration before proceeding.
Once you do, you should follow the tutorial at the [openwrt documentation](https://openwrt.org/docs/guide-user/network/wifi/connect_client_wifi)
