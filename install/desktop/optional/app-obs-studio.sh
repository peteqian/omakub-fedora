#!/bin/bash

# OBS Studio is a screen recording application that allows you to capture both display and webcam in the same recording
# Enable RPM Fusion for OBS Studio
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y obs-studio
