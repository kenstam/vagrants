#!/bin/bash
dnf -y upgrade
dnf install -y git curl fullstaq-ruby-common fullstaq-ruby-2.5.8
echo 'eval "$(rbenv init -)"' >> /etc/bashrc
source /etc/bashrc
rbenv global 2.5.8
gem install bundler
