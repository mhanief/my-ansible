#!/bin/bash
# Add user ans
useradd -s /bin/bash -d /home/ans -m ans
mkdir /home/ans/.ssh
chmod 700 /home/ans/.ssh
touch /home/ans/.ssh/authorized_keys
chmod 600 /home/ans/.ssh/authorized_keys
curl https://raw.githubusercontent.com/mhanief/my-ansible/main/add_user_ans/ans_pub > /home/ans/.ssh/authorized_keys
chown ans. /home/ans/ -R
# Grant sudo without password to user ans
touch /etc/sudoers.d/ansible
echo "ans ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
