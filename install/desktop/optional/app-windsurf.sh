#!/bin/bash

curl -fsSL "https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/windsurf.gpg" | sudo tee /etc/pki/rpm-gpg/windsurf-stable-archive-keyring.gpg >/dev/null
sudo rpm --import /etc/pki/rpm-gpg/windsurf-stable-archive-keyring.gpg
echo -e "[windsurf]\nname=Windsurf Editor\nbaseurl=https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/rpm\nenabled=1\ngpgcheck=1\ngpgkey=file:///etc/pki/rpm-gpg/windsurf-stable-archive-keyring.gpg" | sudo tee /etc/yum.repos.d/windsurf.repo >/dev/null

sudo dnf install -y windsurf
