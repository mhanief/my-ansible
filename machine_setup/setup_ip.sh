#!/bin/bash
nmcli con mod enp0s3 ipv4.address 192.168.88.106/24
nmcli con mod profile ipv4.gateway 192.168.88.1
nmcli con mod profile ipv4.dns 8.8.8.8
nmcli con mod profile ipv4.method manual
nmcli con mod profile connection.autoconnect yes
nmcli con up enp0s3
