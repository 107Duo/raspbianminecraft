#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install raspi-gpio
sudo apt-get install xcompmgr libgl1-mesa-dri -y
cd ~/Downloads
wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
mkdir ~/Minecraft
mkdir ~/Minecraft/Natives
mv ~/Downloads/Minecraft.jar ~/Minecraft
cd ~
mkdir .minecraft
cd ~/.minecraft
wget http://download2167.mediafire.com/vcd9pi815nfg/6wmd7rv5xe0cmrh/realminecraft.7z
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
