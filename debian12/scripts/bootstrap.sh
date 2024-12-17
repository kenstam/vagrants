#!/bin/bash

apt-get -y update
apt-get -y purge postfix puppet puppet-common chef chef-zero
apt-get -y dist-upgrade
apt-get -y autoclean
apt-get -y autoremove --purge
