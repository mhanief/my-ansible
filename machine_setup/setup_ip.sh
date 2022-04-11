#!/bin/bash
set_hostname=<your_hostname>	# example: client.example.com
set_ip=<your_ip_address>	# example: 192.168.88.200/24
set_gw=<gateway_ip>		# example: 192.168.88.1
set_dns=<dns_ip>		# example: 8.8.8.8
nw_profile=<nw_profile>		# example: enp0s3 or eth0. hint "nmcli device"
nmcli general hostname $set_hostname
nmcli con mod $nw_profile ipv4.address $set_ip
nmcli con mod $nw_profile ipv4.gateway $set_gw
nmcli con mod $nw_profile ipv4.dns $set_dns
nmcli con mod $nw_profile ipv4.method manual
nmcli con mod $nw_profile connection.autoconnect yes
nmcli con up $nw_profile
