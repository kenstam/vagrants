#!/bin/bash

sudo useradd -m -s /bin/bash -p Fx7bB59qcB67k test1
echo "vsftpd test file" | sudo tee /home/test1/test.txt
sudo chown test1:test1 /home/test1/test.txt

sudo openssl genrsa -out /usr/local/share/ca-certificates/rootCA.key 2048
sudo openssl req -x509 -new -nodes -key /usr/local/share/ca-certificates/rootCA.key -sha256 -days 1024 -out /usr/local/share/ca-certificates/rootCA.crt -subj "/C=CA/ST=Ontario/L=Toronto/O=IT/CN=192.168.33.33"
sudo openssl genrsa -out /etc/ssl/private/server.key 2048
sudo openssl req -new -key /etc/ssl/private/server.key -out /etc/ssl/private/server.csr -subj "/C=CA/ST=Ontario/L=Toronto/O=IT/CN=192.168.33.33"
sudo openssl x509 -req -in /etc/ssl/private/server.csr -CA /usr/local/share/ca-certificates/rootCA.crt -CAkey /usr/local/share/ca-certificates/rootCA.key -CAcreateserial -out /etc/ssl/private/server.crt -days 365 -sha256
sudo update-ca-certificates

sudo cp -p /etc/vsftpd.conf /etc/vsftpd.conf.orig
sudo cp /home/vagrant/vsftpd.conf /etc/vsftpd.conf
sudo cp /home/vagrant/vsftpd-ssl.conf /etc/vsftpd-ssl.conf
sudo rm /home/vagrant/vsftpd.conf
sudo service vsftpd restart
sudo echo "vsftpd /etc/vsftpd-ssl.conf & ;; exit 0" > /etc/rc.local
sudo vsftpd /etc/vsftpd-ssl.conf &
