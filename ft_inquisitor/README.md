target_ip: The IP address of the device you want to intercept communication from.
target_mac: The MAC address of the device you want to intercept communication from.
source_ip: The IP address of the device you want to impersonate to the target.
source_mac: The MAC address of the device you want to impersonate to the target.

##  ARP poison
ARP: A Scapy class for creating ARP packets. op=2 specifies an ARP reply.
pdst: Destination IP address.
hwdst: Destination MAC address.
psrc: Source IP address (spoofed).
hwsrc: Source MAC address (attacker's MAC).

```
def arp_poison(target_ip, target_mac, source_ip, source_mac):
    send(ARP(op=2, pdst=target_ip, hwdst=target_mac, psrc=source_ip, hwsrc=source_mac), verbose=False)
    send(ARP(op=2, pdst=source_ip, hwdst=source_mac, psrc=target_ip, hwsrc=target_mac), verbose=False)
```

## restore poison

```
def restore_arp(target_ip, target_mac, source_ip, source_mac):
    send(ARP(op=2, pdst=target_ip, hwdst="ff:ff:ff:ff:ff:ff", hwsrc=source_mac, psrc=source_ip), count=3, verbose=False)
    send(ARP(op=2, pdst=source_ip, hwdst="ff:ff:ff:ff:ff:ff", hwsrc=target_mac, psrc=target_ip), count=3, verbose=False)
```

ff:ff:ff:ff:ff:ff --> adress brodcast

## sniff 

- capture network packet
- filtering
- storing

### parameters

filter: A BPF (Berkeley Packet Filter) string to filter packets. In this case, "tcp port 21" filters for packets on TCP port 21, which is the default port for FTP traffic.
prn: A callback function that is called for each captured packet. In this case, packet_callback is the function that processes each packet.
store: If set to 0, packets are not stored in memory. This is useful for saving memory when you only want to process packets.
count: The number of packets to capture. Here, it captures 10 packets before stopping.

## packet_callback

``` 
if packet.haslayer(TCP) and packet.haslayer(Raw):
```

- haslayer() = check if a packet contains a specific protocol layer

check if the packet contains both TCP and Raw layers

### why we must to verify that in packet, there is TCP and Raw ?

- Ensuring TCP: Without the TCP check, we might attempt to process packets that are not part of a TCP connection, leading to incorrect assumptions about the packet structure and potential errors in handling.
- Ensuring Raw: Without the Raw check, we might miss packets that do not contain application-layer data, leading to incomplete monitoring of FTP commands.