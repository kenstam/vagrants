#!/bin/bash
sudo dnf -y upgrade
sudo dnf install -y git curl fullstaq-ruby-common fullstaq-ruby-2.7.2
echo 'eval "$(rbenv init -)"' >> .bashrc
source .bashrc
rbenv global 2.7.2
rbenv local 2.7.2
