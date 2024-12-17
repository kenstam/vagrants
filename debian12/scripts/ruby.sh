#!/bin/bash
export RUBY_VERSION=3.1.2
export GEM_VERSION=3.5.6
export BUNDLE_VERSION=2.4.12

sudo apt-get install -y \
  autoconf \
  patch \
  build-essential \
  rustc \
  libssl-dev \
  libyaml-dev \
  libreadline6-dev \
  zlib1g-dev \
  libgmp-dev \
  libncurses5-dev \
  libffi-dev \
  libgdbm6 \
  libgdbm-dev \
  libdb-dev \
  uuid-dev \
  libmagic-dev \
  imagemagick \
  libmagickwand-dev \
  libcurl4-gnutls-dev \
  libpq-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

~/.rbenv/bin/rbenv install ${RUBY_VERSION}
~/.rbenv/bin/rbenv global ${RUBY_VERSION}
~/.rbenv/bin/rbenv local ${RUBY_VERSION}
~/.rbenv/bin/rbenv exec gem update --system ${GEM_VERSION}
~/.rbenv/bin/rbenv exec gem install bundler --version ${BUNDLE_VERSION}

sudo apt-get install -y /tmp/wkhtmltox_0.12.6.1-3.bookworm_amd64.deb
