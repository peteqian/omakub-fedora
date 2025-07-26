#!/bin/bash

sudo dnf install -y java-1.8.0-openjdk

cd /tmp
wget https://launcher.mojang.com/download/Minecraft.tar.gz
tar -xzf Minecraft.tar.gz
sudo mv minecraft-launcher /opt/
sudo ln -sf /opt/minecraft-launcher/minecraft-launcher /usr/local/bin/minecraft-launcher
rm Minecraft.tar.gz
cd -

# Create desktop entry
sudo tee /usr/share/applications/minecraft.desktop >/dev/null <<EOF
[Desktop Entry]
Type=Application
Version=1.0
Name=Minecraft Launcher
Comment=Official Minecraft Launcher
Exec=/opt/minecraft-launcher/minecraft-launcher
Icon=/opt/minecraft-launcher/minecraft-launcher.svg
Terminal=false
Categories=Game;
EOF
