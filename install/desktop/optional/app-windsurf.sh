#!/bin/bash

curl -fsSL "https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/windsurf.gpg" | sudo gpg --dearmor -o /etc/pki/rpm-gpg/RPM-GPG-KEY-windsurf

sudo tee /etc/yum.repos.d/windsurf.repo >/dev/null <<EOF
[windsurf]
name=Windsurf Stable Repository
baseurl=https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/rpm
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-windsurf
EOF

sudo dnf install -y windsurf
