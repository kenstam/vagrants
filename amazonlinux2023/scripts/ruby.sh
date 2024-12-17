#!/bin/bash
export RUBY_VERSION=3.1.2
export GEM_VERSION=3.5.6
export BUNDLE_VERSION=2.4.12

dnf -y update
dnf -y upgrade

dnf -y install --allowerasing \
      zlib-devel \
      file-devel \
      ImageMagick \
      ImageMagick-devel \
      curl-devel \
      xorg-x11-server-Xvfb \
      gtk3-devel \
      libnotify-devel \
      libyaml-devel \
      postgresql16 \
      libpq-devel

dnf -y install /tmp/wkhtmltox-0.12.6.1-3.almalinux9.x86_64.rpm

dnf -y install \
  fullstaq-ruby-common \
  fullstaq-ruby-${RUBY_VERSION}

echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bashrc

rbenv global ${RUBY_VERSION}
rbenv local ${RUBY_VERSION}
rbenv exec gem update --system ${GEM_VERSION}
rbenv exec gem install bundler --version ${BUNDLE_VERSION}
