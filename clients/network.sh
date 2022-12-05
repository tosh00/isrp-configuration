#!/bin/bash
systemctl stop NetworkManager network

ip addr flush dev enp0s3
ip r flush dev enp0s3

ip addr add 192.168.$1.2/24 dev enp0s3
ip route add 192.168.4.0/24 dev enp0s3
route add default gw 192.168.4.1 enp0s3
ip route del 192.168.4.0/24

