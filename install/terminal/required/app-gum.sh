#!/bin/bash

# Gum is used for the Omakub commands for tailoring Omakub after the initial install
cd /tmp
GUM_VERSION="0.14.3" # Use known good version
wget -qO gum.rpm "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum-${GUM_VERSION}.x86_64.rpm"
sudo dnf install -y $(./gum-${GUM_VERSION}.x86_64.rpm)
rm gum.rpm
cd -
