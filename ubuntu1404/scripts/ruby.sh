#!/bin/bash
apt-get -y install build-essential git curl wget vim python
apt-get -y install libqt4-dev qt4-qmake libpq-dev libmysqlclient-dev libmagic-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev libreadline-dev imagemagick libmagickwand-dev lynx gawk libgmp-dev
cd /tmp
dpkg -i *.deb
gem install bundler --version 1.17.3
