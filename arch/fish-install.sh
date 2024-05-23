#!/bin/bash

source utils/utils.sh

script_start "shell install script"

# install fish
exec_step 1 3 "installing fish & more..." "sudo pacman -S --noconfirm fish zoxide eza"

# copy fish config
exec_step 2 3 "copying custom fish config..." "mkdir -p ~/.config/fish;cp ../resources/config.fish ~/.config/fish/config.fish"

# set fish as default shell
exec_step 3 3 "setting fish as default shell..." "chsh -s /usr/bin/fish"



script_ok "shell install script finished"
