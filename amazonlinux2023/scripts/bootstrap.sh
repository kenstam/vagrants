#!/bin/bash

dnf update
dnf upgrade --releasever=2023.6.20241212 -y
dnf install -y \
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
  which
