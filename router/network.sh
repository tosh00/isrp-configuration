#!/bin/bash
systemctl disable NetworkManager
systemctl stop NetworkManager
systemctl disable network
systemctl stop network
systemctl disable firewalld
systemctl stop firewalld


ip addr flush dev enp0s3
ip addr flush dev enp0s8

ip link set dev enp0s3 up
ip link set dev enp0s8 up

ip addr add 192.168.4.1/24 dev enp0s3
ip addr add 192.168.100.100/32 dev enp0s3
ip addr add 192.168.5.1/24 dev enp0s8
ip addr add 192.168.200.200/32 dev enp0s8


ip route flush dev enp0s3
ip route flush dev enp0s8

ip route add 192.168.1.0/24 via 192.168.100.100
ip route add 192.168.2.0/24 via 192.168.100.100
ip route add 192.168.3.0/24 via 192.168.100.100

ip route add 192.168.5.0/24 dev enp0s8


