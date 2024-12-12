#!/bin/bash
sudo dnf -y update
sudo dnf -y install --allowerasing \
  git \
  curl-devel \
  gnupg2 \
  gcc \
  gcc-c++ \
  libyaml-devel \
  file-devel \
  ImageMagick \
  ImageMagick-devel \
  libpq-devel \
  fullstaq-ruby-common \
  fullstaq-ruby-3.1.2 \
  fullstaq-rbenv
sudo dnf -y install /tmp/wkhtmltox-0.12.6.1-2.almalinux9.x86_64.rpm
echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bashrc
rbenv global 3.1.2
rbenv local 3.1.2
sudo rbenv exec gem update --system 3.5.6
sudo rbenv exec gem install bundler --version 2.4.12
