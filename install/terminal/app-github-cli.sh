#!/bin/bash

sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install -y gh