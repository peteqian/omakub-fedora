#!/bin/bash

# Install 1password and 1password-cli
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
sudo gpg --dearmor --output /etc/pki/rpm-gpg/1password-archive-keyring.gpg

# Add rpm repository
echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=file:///etc/pki/rpm-gpg/1password-archive-keyring.gpg" | sudo tee /etc/yum.repos.d/1password.repo

# Install 1Password & 1password-cli
sudo dnf install -y 1password 1password-cli
