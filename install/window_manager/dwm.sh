#!/bin/bash

echo -e "\n\e[32mInstalling dwm\e[0m\n"
cd ~/Src/
git clone https://github.com/arthurshmidt/dwm-arthur.git

# Compile and Install dwm
cd ~/Src/dwm-arthur/dwm-6.4

sudo make clean install

# Compile and Install dmenu
cd ~/Src/dwm-arthur/dmenu-5.2

sudo make clean install

cd ~/.local/share/shmidtfaced
