#!/bin/bash

sudo dnf install dnf5-plugins
sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo --overwrite
sudo dnf install gh --repo gh-cli -y
