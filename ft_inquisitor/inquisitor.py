import sys
import argparse
import re

def is_valid_mac(mac_str):
    mac_pattern = re.compile(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$')
    if not mac_pattern.match(mac_str):
        print(f"Invalid MAC address: {mac_str}")
        sys.exit(1)

def is_valid_ip(ip_str):
    try:
        nums = ip_str.split('.')
        if len(nums) != 4:
            print(f"Invalid IP address format: {ip_str}. Expected format: X.X.X.X")
            sys.exit(1)
        for n in nums:
            if int(n) < 0 or 255 < int(n):
                print(f"IP address octet out of range: {ip_str}. Each octet must be between 0 and 255.")
                sys.exit(1)
    except ValueError:
        print(f"IP address contains non-numeric values: {ip_str}. Expected numeric values in each octet.")
        sys.exit(1)


if __name__ == "__main__":

    if len(sys.argv) != 5:
        print("Usage: python3 ./inquisitor.py <IP-src> <MAC-src> <IP-target> <MAC-target>")
        sys.exit(1)

    parser = argparse.ArgumentParser()
    parser.add_argument("ip_src", type=is_valid_ip, help="IP-src")
    parser.add_argument("mac_src", type=is_valid_mac, help="MAC-src")
    parser.add_argument("ip_target", type=is_valid_ip, help="IP-target")
    parser.add_argument("mac_target", type=is_valid_mac, help="MAC-target")
    args = parser.parse_args()

    print(args)
