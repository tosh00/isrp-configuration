#!/bin/bash
echo "net.ipv4.ip_forward=1" > /etc/sysctl.d/99-sysctl.conf
sysctl -p