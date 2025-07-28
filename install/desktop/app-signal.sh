#!/bin/bash

# Install Signal from Flathub as it's easier to maintain
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.signal.Signal
