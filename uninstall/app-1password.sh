#!/bin/bash

sudo dnf remove -y 1password 1password-cli
sudo rm /etc/yum.repos.d/1password.repo
sudo rm /etc/pki/rpm-gpg/1password-archive-keyring.gpg
