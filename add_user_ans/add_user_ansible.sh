#!/bin/bash

useradd -s /bin/bash -d /home/ans -m ans
mkdir /home/ans/.ssh
chmod 700 /home/ans/.ssh
touch /home/ans/.ssh/authorized_keys

