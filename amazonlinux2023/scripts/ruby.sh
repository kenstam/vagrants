#!/bin/bash
export RUBY_VERSION=3.1.2
export GEM_VERSION=3.5.6
export BUNDLE_VERSION=2.4.12

sudo dnf -y update

sudo dnf -y install --allowerasing \
      git \
      make \
      automake \
      gcc \
      gcc-c++ \
      tar \
      bzip2 \
      xz \
      nmap-ncat \
      iproute \
      which \
      zlib-devel \
      file-devel \
      ImageMagick \
      ImageMagick-devel \
      curl-devel \
      xorg-x11-server-Xvfb \
      gtk3-devel \
      libnotify-devel \
      nss \
      libXScrnSaver \
      alsa-lib \
      libyaml-devel \
      postgresql16 \
      libpq-devel

sudo dnf -y install /tmp/wkhtmltox-0.12.6.1-3.almalinux9.x86_64.rpm

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
source ~/.bash_profile
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install ${RUBY_VERSION}
rbenv global ${RUBY_VERSION}
rbenv local ${RUBY_VERSION}
rbenv exec gem update --system 3.5.6
rbenv exec gem install bundler --version 2.4.12
