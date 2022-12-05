#!/bin/bash
cat ./kernel-parameters >> /etc/sysctl.d/99-sysctl.conf
echo "" > /etc/sysctl.d/99-sysctl.conf
sysctl -p