#!/bin/bash

sudo rm -f /etc/yum.repos.d/1password.repo
sudo rm /usr/share/keyrings/1password-archive-keyring.gpg
sudo rm /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
sudo rm -r /etc/debsig/policies/AC2D62742012EA22/
sudo dnf remove -y 1password 1password-cli
