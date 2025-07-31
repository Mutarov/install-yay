#!/bin/sh
echo "Installing dependecies..."
sudo pacman -Syu
sudo pacman -S --needed base-devel git
echo "Cloning repository..."
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
echo "making package..."
makepkg -si
cd -
echo "Builded!"
