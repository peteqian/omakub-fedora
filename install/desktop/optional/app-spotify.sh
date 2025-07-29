#!/bin/bash

# Stream music using https://spotify.com
sudo dnf config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-spotify.repo --overwrite
sudo dnf install -y spotify-client
