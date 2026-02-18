# shmidtfaced
Installation scripts for my development environment.

## Installation
Install files in ~/.local/share/

    $ ./install.sh

## Sudo Setup
Add user to the sudo group

    $ su -
    $ usermod -aG sudo <user>

## Wifi Setup
Make sure to comment out with "#" of any devices.  Check the /etc/interfaces.

## Git Setup
Setup password and setup globally.

    $ git config --global user.name "<user name>"
    $ git config --global user.emaili "<user email>"
    $ git config --global credential.helper store
