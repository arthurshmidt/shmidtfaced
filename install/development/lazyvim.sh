#!/bin/bash

if [[ ! -d "$HOME/.config/nvim" ]]; then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	rm -rf ~/.config/nvim/.git
fi
