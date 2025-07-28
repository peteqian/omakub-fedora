#!/bin/bash

sudo dnf remove -y windsurf
sudo rm /etc/yum.repos.d/windsurf.repo
sudo rm /etc/pki/rpm-gpg/windsurf-stable-archive-keyring.gpg
