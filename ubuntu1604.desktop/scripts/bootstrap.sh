#!/bin/bash

apt-get -y update
apt-get -y dist-upgrade
apt-get -y autoclean
apt-get -y purge puppet puppet-common chef chef-zero
apt-get -y install ubuntu-desktop fwbuilder
apt-get -y autoremove --purge

ufw disable
