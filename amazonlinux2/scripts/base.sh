#!/bin/bash
sudo yum-config-manager -y --enable epel
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum upgrade -y
