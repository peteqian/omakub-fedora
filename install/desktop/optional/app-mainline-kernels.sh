#!/bin/bash

# Note: Mainline kernel tool is primarily for Ubuntu. For Fedora, kernel updates are handled through dnf
# Install kernel development tools and latest kernel instead
sudo dnf install -y kernel-devel kernel-headers dkms
sudo dnf upgrade -y kernel
