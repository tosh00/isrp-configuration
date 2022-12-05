#!/bin/bash
systemctl disable NetworkManager
systemctl stop NetworkManager
systemctl disable network
systemctl stop network
systemctl disable firewalld
systemctl stop firewalld

ip addr flush dev enp0s3

ip addr add 192.168.5.$(($1+1))/24 dev enp0s3

ip route flush dev enp0s3

ip route add 192.168.200.0/24 dev enp0s3
route add default gw 192.168.200.200 enp0s3
ip route del 192.168.200.0/24

cp ./index.html /var/www/html/
chmod 777 /var/www/html/index.html 
cp ./httpd$1.conf /etc/httpd/conf/httpd.conf

systemctl start httpd
systemctl enable httpd

# echo "
# NM_CONTROLED=no
# DEVICE=enp0s3
# ONBOOT=yes
# BOOTPROTO=none
# IPADDR1=192.168.5.$(($1+1))
# GATEWAY1=192.168.5.1
# NETMASK1=255.255.255.0
# IPADDR2=192.168.200.200
# GATEWAY2=192.168.5.1
# NETMASK2=255.255.255.255
# " > /etc/sysconfig/network-scripts/ifcfg-enp0s3
# cp ./route-enp0s3 /etc/sysconfig/network-scripts/route-enp0s3
# cp ./httpd.conf /etc/httpd/conf/httpd.conf
# systemctl start network
# systemctl enable network
# systemctl start httpd
# systemctl enable httpd
# systemctl stop firewalld
# systemctl disable firewalld