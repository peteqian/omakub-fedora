#!/bin/bash

sudo dnf remove -y VirtualBox VirtualBox-kmodsrc
sudo dnf autoremove -y
rm -rf ~/.config/VirtualBox
