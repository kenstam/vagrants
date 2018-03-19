#!/bin/bash

sudo useradd -m -s /bin/bash -p Fx7bB59qcB67k test1
echo "vsftpd test file" | sudo tee /home/test1/test.txt

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=CA/ST=Ontario/L=Toronto/O=IT/CN=ftpserver"

sudo cp -p /etc/vsftpd.conf /etc/vsftpd.conf.orig
sudo cp /home/vagrant/vsftpd.conf /etc/vsftpd.conf
sudo rm /home/vagrant/vsftpd.conf
sudo service vsftpd restart
