#!/bin/bash

sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/network:im:signal/Fedora_42/network:im:signal.repo
sudo dnf install -y signal-desktop