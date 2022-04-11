#!/bin/bash
set_hostname=ansible06-db03.sh.local
set_ip=XXX.XXX.XXX.XXX/XX
set_gw=XXX.XXX.XXX.XXX
set_dns=XXX.XXX.XXX.XXX
nmcli general hostname $set_hostname
nmcli con mod enp0s3 ipv4.address $set_ip
nmcli con mod enp0s3 ipv4.gateway $set_gw
nmcli con mod enp0s3 ipv4.dns $set_dns
nmcli con mod enp0s3 ipv4.method manual
nmcli con mod enp0s3 connection.autoconnect yes
nmcli con up enp0s3
