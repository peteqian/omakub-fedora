#!/bin/bash

sudo dnf remove -y brave-browser
sudo rm -f /etc/yum.repos.d/brave-browser.repo
sudo rm /usr/share/keyrings/brave-browser-*.gpg
