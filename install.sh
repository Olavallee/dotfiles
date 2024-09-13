#!/bin/bash

mkdir ~/cst
cd cst
mkdir bin cegep projets

sudo pacman -Sy firefox alacritty git vim neovim gcc gdb python3 python-pip python-virtualenv ttf-meslo-nerd polybar feh xorg-xrandr

# cloner dotfiles dans un fichier temporaire
#git clone https://github.com/Olavallee/dotfiles /tmp/dotfiles

# clone le .gitconfig a la place de ~/.gitconfig originel
cp ~/dotfiles/.gitconfig ~/.gitconfig

# copie config de dotfile pour remplacer ~/.config/i3/config
cp ~/dotfiles/config ~/.config/i3/config

# copie le dossier alacritty du repo et le met dans ~/.config/
cp -r ~/dotfiles/alacritty ~/.config/alacritty

# Remplace .bashrc par celui du repo git
cp ~/dotfiles/.bashrc ~/.bashrc

# ajout du background dans image
cp -r ~/dotfiles/background ~/background

source ~/.bashrc

echo "Configuration terminee."

#sudo rm -rf ~/tmp/dotfiles
