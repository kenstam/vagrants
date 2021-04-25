#!/bin/bash
sudo dnf install -y git curl make gcc gcc-c++ rpm-build zlib-devel fullstaq-ruby-common fullstaq-ruby-2.7.3-jemalloc fullstaq-ruby-2.6.7-jemalloc fullstaq-ruby-2.5.8-jemalloc
echo 'eval "$(rbenv init -)"' >> .bashrc
source .bashrc
rbenv global 2.5.8-jemalloc
rbenv local 2.5.8-jemalloc
