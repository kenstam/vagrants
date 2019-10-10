#!/bin/bash

sudo apt-get -y update
sudo apt-get -y autoclean
sudo apt-get -y autoremove

sudo ufw disable

sudo apt-get -y install vsftpd

# allow password sftp
sudo cp -p /etc/ssh/sshd_config /etc/ssh/sshd_config.orig
sudo cp /home/vagrant/sshd_config /etc/ssh/sshd_config
sudo service ssh restart
