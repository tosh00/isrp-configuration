#!/bin/bash
nmcli con mod "Połączenie przewodowe 1" connection.id enp0s3
nmcli con mod enp0s3 ipv4.addresses "192.168.5.1/24" ipv4.gateway "192.168.5.1" ipv4.method "static"
nmcli con up enp0s3

nmcli con mod "Połączenie przewodowe 2" connection.id enp0s8
nmcli con mod enp0s8 ipv4.addresses "192.168.4.1/24" ipv4.gateway "192.168.4.1" ipv4.method "static"
nmcli con up enp0s8

