#!/bin/bash
nmcli con delete enp0s3
nmcli con up enp0s3

# shutdown -r 0