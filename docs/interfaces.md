# Network Interfaces Configuration
## Loopback Interface (lo)

The loopback interface allows network programs to communicate with the local host (the same machine) using IP networking.

#### Configuration:
```shell
auto lo
iface lo inet loopback
```
  * `auto lo`: This line indicates that the interface should be automatically started during system boot.
  
  * `iface lo inet loopback`: This line configures the `lo` interface with the `inet` protocol family and sets it as a loopback interface.

## Ethernet Interface (eth0)

The Ethernet interface (eth0) is typically used for connecting to a local network or the internet.

#### Configuration:
```shell
auto eth0
iface eth0 inet dhcp
```
  * `auto eth0`: This line indicates that the interface should be automatically started during system boot.
  
  * `iface eth0 inet loopback`: This line configures the `eth0` interface with the `inet` protocol family and enables DHCP (Dynamic Host Configuration Protocol) to automatically obtain the network configuration from a DHCP server.
  
The configuration allows the `eth0` interface to obtain its network settings dynamically, including the IP address, subnet mask, default gateway, and other network parameters, from a DHCP server.

These network interface configurations define the behavior and network settings for the loopback interface (`lo`) and the Ethernet interface (`eth0`).
