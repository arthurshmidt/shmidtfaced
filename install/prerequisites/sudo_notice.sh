#!/bin/bash

echo "Have you installed sudo and added a user to the sudo group?"
echo -e "If not, ctrl-c to exit and type the following commands:\n"
echo "    $ su -"
echo "    $ apt-get sudo"
echo "    $ usermod -aG sudo username"
echo -e "    $ reboot\n"
read -p "Press Enter to continue."
