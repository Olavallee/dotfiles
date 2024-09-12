#!/bin/bash

mkdir cst
cd cst
mkdir bin cegep projets

sudo pacman -Sy alacritty git vim neovim gcc gdb python3 python-pip python-virtualenv ttf-meslo-nerd polybar feh


#clone le repo git
if [ -d /tmp/dotfiles ]; then
	sudo rm -rf /tmp/dotfiles;
fi

if [ -f ~/.gitconfig ]; then
	sudo rm -rf ~/.gitconfig;
fi

# cloner dotfiles dans un fichier temporaire
git clone https://github.com/Olavallee/dotfiles /tmp/dotfiles

# clone le .gitconfig a la place de ~/.gitconfig originel
cp /tmp/dotfiles/.gitconfig ~/

# copie config de dotfile pour remplacer ~/.config/i3/config
cp /tmp/dotfiles/config ~/.config/i3/config

# copie le dossier alacritty du repo et le met dans ~/.config/
cp -r /tmp/dotfiles/alacritty ~/.config/alacritty

# Remplace .bashrc par celui du repo git
cp /tmp/dotfiles/.bashrc ~/.bashrc

# ajout du background dans image
cp -r /tmp/dotfiles/background ~/Image/background

source ~/.bashrc

echo "Configuration terminee."

sudo rm -rf ~/tmp/dotfiles
