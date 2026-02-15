#!/bin/bash

echo -e "\n\e[32mInstalling dwm\e[0m\n"
git clone https://github.com/arthurshmidt/dwm-arthur.git $(pwd)/install/window_manager/dwm-arthur

# Compile and Install dwm
cd ~/.local/share/shmidtfaced/install/window_manager/dwm-arthur/dwm-6.4

sudo make clean install

# Compile and Install dmenu
cd ~/.local/share/shmidtfaced/install/window_manager/dwm-arthur/dmenu-5.2

sudo make clean install

cd ~/.local/share/shmidtfaced
