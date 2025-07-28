#!/bin/bash

# Install mise for managing multiple versions of languages. See https://mise.jdx.dev/
sudo dnf install -y gnupg2 wget curl
sudo mkdir -p /etc/pki/rpm-gpg
wget -qO - https://mise.jdx.dev/gpg-key.pub | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-mise
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-mise
echo -e "[mise]\nname=mise\nbaseurl=https://mise.jdx.dev/rpm\nenabled=1\ngpgcheck=1\ngpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mise" | sudo tee /etc/yum.repos.d/mise.repo
sudo dnf install -y mise
