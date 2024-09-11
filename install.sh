#!/bin/bash

cd ~/
mkdir cst
cd cst
mkdir bin cegep projets

sudo pacman alacritty git vim nvim gcc gdb python3 python-pip python-virtualenv ttf-meslow-nerd polybar feh

mkdir -p ~/.config/alacritty
touch ~/.config/alacritty/alacrity.toml
touch ~/.config/alacritty/catppuccin-mocha.toml


echo 'bindsym $mod+Return exec alacritty' >> ~/.config/i3/config

source ~/.bashrc

echo "Configuration terminee."
