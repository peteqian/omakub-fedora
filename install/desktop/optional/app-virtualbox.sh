#!/bin/bash

# Virtualbox allows you to run VMs for other flavors of Linux or even Windows
# See https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview
# for a guide on how to run Ubuntu inside it.

sudo dnf install -y VirtualBox VirtualBox-kmodsrc
sudo usermod -aG vboxusers ${USER}
# Note: Extension pack needs to be installed manually from Oracle's website due to licensing
