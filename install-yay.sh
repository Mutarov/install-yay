#!/bin/sh
echo "Installing depencies..."
sudo pacman -Syu
sudo pacman -S --needed base-devel git
echo "Cloning repository..."
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
echo "making package..."
makepkg -si
cd -
echo "Builded!"
