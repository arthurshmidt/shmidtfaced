#!/bin/bash

echo -e "\n\e[32mInstalling fonts\e[0m\n"

# Copy of Terminess Font files
sudo cp ~/Src/dwm-arthur/Terminus.zip /usr/local/share/fonts/

# Uncompress and cache fonts
cd /usr/local/share/fonts/
sudo unzip Terminus.zip
sudo rm Terminus.zip
fc-cache -fv

# Return to install directory
cd ~/.local/share/shmidtfaced
