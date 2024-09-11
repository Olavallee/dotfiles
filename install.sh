#!/bin/bash

cd ~/
mkdir cst
cd cst
mkdir bin cegep projets

sudo pacman alacritty git vim nvim gcc gdb python3 python-pip python-virtualenv ttf-meslow-nerd polybar feh

URL_REPO="https://github.com/Olavallee/dotfiles"
URL_DEST_TEMP="/tmp/dotfile"

#clone le repo git
git clone $URL_REPO ~/

# copie config de dotfile pour remplacer ~/.config/i3/config
cp URL_DEST_TEMP/config ~/.config/i3/config

#Creer repertoire alacritty
mkdir -p ~/.config/alacritty

# copie le dossier alacritty du repo et le met dans ~/.config/
cp -r $URL_DEST_TEMP/alacritty/* ~/.config/alacritty

# Remplace .bashrc par celui du repo git
cp $URL_DEST_TEMP/.bashrc ~/.bashrc

source ~/.bashrc

rm -rf $URL_DEST_TEMP

echo "Configuration terminee."
