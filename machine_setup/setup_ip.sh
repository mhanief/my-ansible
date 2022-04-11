#!/bin/bash
hostname=localhost.localdomain
ipadd=XXX.XXX.XXX.XXX/XX
gw=XXX.XXX.XXX.XXX
dns=XXX.XXX.XXX.XXX
nmcli general hostname ansible06-db03.sh.local
nmcli con mod enp0s3 ipv4.address 192.168.88.106/24
nmcli con mod enp0s3 ipv4.gateway 192.168.88.1
nmcli con mod enp0s3 ipv4.dns 8.8.8.8
nmcli con mod enp0s3 ipv4.method manual
nmcli con mod enp0s3 connection.autoconnect yes
nmcli con up enp0s3
echo -e "\n--> Below are your machine configuration: \n\nHostname: $(hostname -f)\n\n$(nmcli -p)"
