#!/bin/bash
sudo yum install -y \
  curl \
  make \
  gcc \
  gcc-c++ \
  zlib-devel \
  fullstaq-ruby-common \
  fullstaq-ruby-3.1.4 \
  fullstaq-ruby-3.1.4-jemalloc \
  fullstaq-rbenv
echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bashrc
rbenv global 3.1.4
rbenv local 3.1.4
