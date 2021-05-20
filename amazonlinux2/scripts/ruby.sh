#!/bin/bash
sudo yum install -y git curl make gcc gcc-c++ rpm-build zlib-devel fullstaq-ruby-common fullstaq-ruby-2.7.3-jemalloc fullstaq-ruby-2.6.7-jemalloc fullstaq-ruby-2.5.8-jemalloc fullstaq-rbenv
echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bashrc
rbenv global 2.6.7-jemalloc
rbenv local 2.6.7-jemalloc
