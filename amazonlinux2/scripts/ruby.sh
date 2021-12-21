#!/bin/bash
sudo yum install -y \
  git \
  curl \
  make \
  gcc \
  gcc-c++ \
  rpm-build \
  zlib-devel \
  fullstaq-ruby-common \
  fullstaq-ruby-2.7.5 \
  fullstaq-ruby-2.7.5-jemalloc \
  fullstaq-ruby-2.7.2-jemalloc \
  fullstaq-ruby-2.6.9 \
  fullstaq-ruby-2.6.9-jemalloc \
  fullstaq-ruby-2.5.9 \
  fullstaq-ruby-2.5.9-jemalloc \
  fullstaq-rbenv
echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bashrc
rbenv global 2.6.9
rbenv local 2.6.9
