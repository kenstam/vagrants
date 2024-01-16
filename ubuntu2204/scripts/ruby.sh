#!/bin/bash
sudo apt-get -y install gnupg apt-transport-https ca-certificates curl
curl -SLfO https://raw.githubusercontent.com/fullstaq-labs/fullstaq-ruby-server-edition/main/fullstaq-ruby.asc
sudo mv fullstaq-ruby.asc /etc/apt/trusted.gpg.d/
sudo apt-get update
sudo apt-get -y install \
  fullstaq-ruby-common \
  fullstaq-ruby-3.1.4 \
  fullstaq-ruby-3.1.4-jemalloc
echo 'eval "$(rbenv init -)"' >> .bashrc
source .bashrc
rbenv global 3.1.4
rbenv local 3.1.4
