#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install raspi-gpio
sudo apt-get install xcompmgr libgl1-mesa-dri
cd ~/Downloads
wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
mkdir ~/Minecraft
mkdir ~/Minecraft/Natives
mv ~/Downloads/Minecraft.jar ~/Minecraft
cd
wget http://download2134.mediafire.com/uvq5g6ie9j9g/ubzngc3zd1c5obq/.minecraft.tar.gz
unzip .minecraft.tar.gz
cd ~/Downloads
wget http://orienteer.webspace.virginmedia.com/minecraft/2.9.4-nightly-20150209/lwjgl-2.9.4-nightly-20150209.jar
cd ~/home/pi/.minecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209/
rm lwjgl-2.9.4-nightly-20150209.jar
mv ~/Downloads/lwjgl-2.9.4-nightly-20150209.jar ~/home/pi/.minecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209/
cd ~/Minecraft/natives
wget http://orienteer.webspace.virginmedia.com/minecraft/liblwjgl.so
wget http://orienteer.webspace.virginmedia.com/minecraft/libopenal.so
cd ~/Minecraft
wget http://orienteer.webspace.virginmedia.com/minecraft/run.sh
mv ~/Downloads/liblwjgl.so ~/Minecraft/natives
mv ~/Downloads/libopenal.so ~/Minecraft/natives
