#!/bin/bash
nmcli con delete enp0s3
nmcli con add type ethernet con-name enp0s3 ifname enp0s3

shutdown enp0s3 up