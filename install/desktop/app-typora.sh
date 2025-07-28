#!/bin/bash

# Temporarily switch away from using Typora repo which is broken.
#
# wget -qO - https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc >/dev/null || true
#
# sudo add-apt-repository -y 'deb https://typora.io/linux ./'
# sudo add-apt-repository -y 'deb https://typora.io/linux ./'
# sudo apt update -y
# sudo apt install -y typora

flatpak install -y flathub io.typora.Typora

# Add iA Typora theme
mkdir -p ~/.config/Typora/themes
cp ~/.local/share/omakub/configs/typora/ia_typora.css ~/.config/Typora/themes/
cp ~/.local/share/omakub/configs/typora/ia_typora_night.css ~/.config/Typora/themes/
