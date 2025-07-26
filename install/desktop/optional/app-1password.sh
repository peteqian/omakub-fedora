#!/bin/bash

# Install 1password and 1password-cli single script
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
sudo gpg --dearmor --output /etc/pki/rpm-gpg/RPM-GPG-KEY-1password

# Add dnf repository
sudo tee /etc/yum.repos.d/1password.repo >/dev/null <<EOF
[1password]
name=1Password Stable Channel
baseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-1password
EOF

# Install 1Password & 1password-cli
sudo dnf install -y 1password 1password-cli
