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
	echo "$1"
	echo
}

# Install prerequisites
show_subtext "Installing prerequisites [1/6]"
# source $SHMIDTFACED_INSTALL/prerequisites/directories.sh

# Configuration
show_subtext "Installing configurations [2/6]"

# Development
show_subtext "Installing development & terminal tools [3/6]"

# Desktop
show_subtext "Installing desktop & window manager tools [4/6]"
# source $SHMIDTFACED_INSTALL/desktop/dwm.sh

# Apps
show_subtext "Installing default applications [5/6]"
# source $SHMIDTFACED/apps/terminal_apps.sh
# Update
show_subtext "Updating system packages [6/6]"
sudo apt update -y
sudo apt upgrade -y

# Reboot
show_subtext "You're done! Rebooting now..."
sleep 2
reboot
