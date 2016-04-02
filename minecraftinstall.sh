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
sudo apt-get install unrar
cd
wget http://download1998.mediafire.com/34312va43lig/bbc9q11zms4x28g/minecraft.rar
unrar x minecraft.rar
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
