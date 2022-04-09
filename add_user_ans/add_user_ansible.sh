#!/bin/bash
useradd -s /bin/bash -d /home/ans -m ans
mkdir /home/ans/.ssh
chmod 700 /home/ans/.ssh
touch /home/ans/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
curl https://raw.githubusercontent.com/mhanief/my-ansible/main/add_user_ans/ans_pub > /home/ans/.ssh/authorized_keys
chown ans. /home/ans/ -R
