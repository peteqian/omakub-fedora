#!/bin/bash

# Install mise for managing multiple versions of languages. See https://mise.jdx.dev/
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://mise.jdx.dev/rpm/mise.repo
sudo dnf install -y mise