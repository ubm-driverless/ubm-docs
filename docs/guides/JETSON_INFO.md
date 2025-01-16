# Philly's Jetson Xavier NX info

## Commands' outputs
### L4T
L4T (Linux 4 Tegra) version
```bash
$ head -n 1 /etc/nv_tegra_release
```
Output:
`# R35 (release), REVISION: 4.1, GCID: 33958178, BOARD: t186ref, EABI: aarch64, DATE: Tue Aug  1 19:57:35 UTC 2023`

Our L4T version is 35.4.1

### Jetson-IO
How to run Jetson-IO
```bash
sudo /opt/nvidia/jetson-io/jetson-io.py
```

### Jetson GPIO pins
- pin 2 -> + power supply (5V) ->  black cable
- pin 6 -> Ground (0V) -> brown cable
- pin 29 -> white led -> red / white cable
- pin 31 -> blue led -> blue cable
- pin 32 -> yellow  led -> yellow cable
- pin 33 -> green led -> green cable


### Useful links
- [Jetson Xavier NX developer kit user guide](https://developer.nvidia.com/downloads/embedded/secure/tools/files/jetpack-sdks/jetpack-4.4-ga/jetson_xavier_nx_developer_kit_user_guide.pdf)
- [Jetson Linux board support package](https://developer.nvidia.com/embedded/jetson-linux-r3541)
- [Jetson Linux 35.4.1 GA Developer guide](https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/index.html)
- [Jetson gpio repository](https://github.com/NVIDIA/jetson-gpio)
- [Jetson Xavier NX pin layout](https://jetsonhacks.com/nvidia-jetson-xavier-nx-gpio-header-pinout/)
