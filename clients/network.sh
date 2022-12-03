#!/bin/bash
nmcli con mod "Połączenie przewodowe 1" connection.id enp0s3
nmcli con mod enp0s3 ipv4.addresses "192.168.$1.2/24" ipv4.gateway "192.168.$1.1" ipv4.method "static"
nmcli con up enp0s3
