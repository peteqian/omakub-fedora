#!/bin/bash

# Stream music using https://spotify.com
sudo dnf config-manager --add-repo https://negativo17.org/repos/fedora-spotify.repo
sudo dnf install -y spotify-client
