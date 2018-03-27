#!/bin/bash

sudo apt-get -y update
sudo apt-get -y autoclean
sudo apt-get -y autoremove

sudo ufw disable

sudo apt-get -y install git
