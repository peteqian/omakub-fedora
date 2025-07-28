#!/bin/bash

sudo dnf install -y java-1.8.0-openjdk

cd /tmp
wget https://launcher.mojang.com/download/Minecraft.tar.gz
tar -xzf Minecraft.tar.gz
sudo mv minecraft-launcher /opt/
sudo ln -sf /opt/minecraft-launcher/minecraft-launcher /usr/local/bin/minecraft-launcher
rm Minecraft.tar.gz
cd -
