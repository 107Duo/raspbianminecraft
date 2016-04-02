#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get install raspi-gpio
sudo apt-get install xcompmgr libgl1-mesa-dri
cd ~/Downloads
wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
mkdir ~/Minecraft
mkdir ~/Minecraft/Natives
mv ~/Downloads/Minecraft.jar ~/Minecraft
cd ~
mkdir .minecraft
cd ~/.minecraft
sudo apt-get install p7zip
wget https://docs.google.com/uc?export=download&confirm=LvdY&id=0BxuK6NO2cM5xVHhleDNTUFh5RGM
7za e realminecraft.7z
cd ~/Downloads
wget http://orienteer.webspace.virginmedia.com/minecraft/2.9.4-nightly-20150209/lwjgl-2.9.4-nightly-20150209.jar
cd ~/home/pi/.minecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209/
rm lwjgl-2.9.4-nightly-20150209.jar
mv ~/Downloads/lwjgl-2.9.4-nightly-20150209.jar ~/home/pi/.minecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209/
cd ~/Minecraft/Natives
wget http://orienteer.webspace.virginmedia.com/minecraft/liblwjgl.so
wget http://orienteer.webspace.virginmedia.com/minecraft/libopenal.so
cd ~/Minecraft
wget http://orienteer.webspace.virginmedia.com/minecraft/run.sh
chmod +x run.sh
./run.sh
