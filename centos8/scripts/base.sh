#!/bin/bash
sudo dnf install -y epel-release
sudo dnf config-manager --set-enabled powertools
sudo dnf upgrade -y
