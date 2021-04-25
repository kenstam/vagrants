#!/bin/bash
sudo dnf install epel-release
sudo sed -i 's/enabled\=0/enabled\=1/g' /etc/yum.repos.d/CentOS-Linux-PowerTools.repo
sudo dnf -y upgrade
sudo dnf install -y git curl make gcc gcc-c++ rpm-build zlib-devel fullstaq-ruby-common fullstaq-ruby-2.7.3-jemalloc fullstaq-ruby-2.6.7-jemalloc fullstaq-ruby-2.5.8-jemalloc file-devel ImageMagick ImageMagick-devel curl-devel mariadb-devel
echo 'eval "$(rbenv init -)"' >> .bashrc
source .bashrc
rbenv global 2.5.8-jemalloc
rbenv local 2.5.8-jemalloc
