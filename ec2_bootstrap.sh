#!/bin/bash
echo "Make sure to set deploy, ubuntu, and root account passwords!"
echo "Also copy the contents of id_rsa.pub from your local machine into the file /home/deploy/.ssh/authorized_keys"
echo "Set user permissions for sudo appropriately in visudo"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fail2ban
sudo useradd deploy
sudo mkdir /home/deploy
sudo mkdir /home/deploy/.ssh
sudo chmod 700 /home/deploy/.ssh
sudo touch /home/deploy/.ssh/authorized_keys
sudo chmod deploy:deploy /home/deploy -R
for i in 22 80 443; do
    sudo ufw $i allow 
done
