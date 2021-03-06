#!/bin/bash
sudo apt-get -y install gnupg apt-transport-https ca-certificates curl
curl -SLfO https://raw.githubusercontent.com/fullstaq-labs/fullstaq-ruby-server-edition/main/fullstaq-ruby.asc
sudo apt-key add fullstaq-ruby.asc
rm fullstaq-ruby.asc
sudo apt-get update
sudo apt-get -y install fullstaq-ruby-common fullstaq-ruby-2.7.2
echo 'eval "$(rbenv init -)"' >> .bashrc
source .bashrc
rbenv global 2.7.2
rbenv local 2.7.2
