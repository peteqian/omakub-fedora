#!/bin/bash

sudo dnf remove -y VirtualBox VirtualBox-dkms VirtualBox-qt
sudo dnf autoremove -y
rm -rf ~/.config/VirtualBox
