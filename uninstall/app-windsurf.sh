#!/bin/bash

sudo dnf remove -y windsurf
sudo rm -f /etc/yum.repos.d/windsurf.repo
sudo rm /usr/share/keyrings/windsurf-stable-archive-keyring.gpg
