#!/bin/bash

# Exit immediately if a command exits with non-zero status
set -e

export PATH="$HOME/.local/share/shmidtfaced/bin:$PATH"
SHMIDTFACED_INSTALL=~/.local/share/shmidtfaced/install

# Give people a chance to retry running the installation
catch_errors() {
	echo -e "\n\e[31mShmidt Faced insatllation failed!\e[0m"
	echo "You can retry by running: bash ~/.local/share/shmidtfaced/install.sh"
}

trap catch_errors ERR

show_logo() {
	clear
	cat <~/.local/share/shmidtfaced/logo.txt
	echo
}

show_subtext() {
	echo -e "\n\e[34m$1\e[0m\n"
}

show_logo

# Install prerequisites
show_subtext "Installing prerequisites [1/7]"
source $SHMIDTFACED_INSTALL/prerequisites/sudo_notice.sh
source $SHMIDTFACED_INSTALL/prerequisites/system_update.sh

# Core Packages 
show_subtext "Installing base packages [2/7]"
source $SHMIDTFACED_INSTALL/core_packages/core_packages.sh

# Configuration
show_subtext "Installing configurations [3/7]"

# Development
show_subtext "Installing development & terminal tools [4/7]"
source $SHMIDTFACED_INSTALL/development/compilers.sh
source $SHMIDTFACED_INSTALL/development/lazyvim.sh

# Window Manager 
show_subtext "Installing desktop & window manager tools [5/7]"
source $SHMIDTFACED_INSTALL/window_manager/xorg.sh
source $SHMIDTFACED_INSTALL/window_manager/dwm_libraries.sh
source $SHMIDTFACED_INSTALL/window_manager/ly_libraries.sh
source $SHMIDTFACED_INSTALL/window_manager/rofi.sh
source $SHMIDTFACED_INSTALL/window_manager/dwm.sh
# source $SHMIDTFACED_INSTALL/window_manager/ly.sh

# Applications
show_subtext "Installing general applications [6/7]"
source $SHMIDTFACED_INSTALL/applications/applications.sh
source $SHMIDTFACED_INSTALL/applications/tldr.sh

# Update
show_subtext "Updating system packages [7/7]"
sudo apt update -y
sudo apt upgrade -y

# Reboot
show_subtext "You're done! Rebooting now..."
sleep 2
# sudo reboot
