#!/bin/bash
nmcli con mod "Połączenie przewodowe 2" connection.id enp0s3
nmcli con mod enp0s3 ipv4.addresses "192.168.4.2/24" ipv4.gateway "192.168.4.1" ipv4.method "static"
nmcli con up enp0s3


nmcli con mod "Połączenie przewodowe 3" connection.id enp0s8
nmcli con mod enp0s8 ipv4.addresses "192.168.1.1/24" ipv4.gateway "192.168.1.2" ipv4.method "static"
nmcli con up enp0s8


nmcli con mod "Połączenie przewodowe 4" connection.id enp0s9
nmcli con mod enp0s9 ipv4.addresses "192.168.2.1/24" ipv4.gateway "192.168.2.2" ipv4.method "static"
nmcli con up enp0s9

nmcli con mod "Połączenie przewodowe 1" connection.id enp0s10
nmcli con mod enp0s10 ipv4.addresses "192.168.3.1/24" ipv4.gateway "192.168.3.2" ipv4.method "static"
nmcli con up enp0s10
