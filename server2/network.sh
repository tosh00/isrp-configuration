#!/bin/bash
nmcli con mod "Połączenie przewodowe 1" connection.id enp0s3
nmcli con mod enp0s3 ipv4.addresses "192.168.5.3/24" ipv4.gateway "192.168.5.3"
nmcli con up enp0s3
