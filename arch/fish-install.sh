#!/bin/bash

source utils/utils.sh

N="fish-install"
S="3"

script_start $N

# install fish
exec_step $N 1 $S "installing fish & more..." "sudo pacman -S --noconfirm fish zoxide eza"

# copy fish config
exec_step $N 2 $S "copying custom fish config..." "mkdir -p ~/.config/fish;cp ../resources/config.fish ~/.config/fish/config.fish"

# set fish as default shell
exec_step $N 3 $S "setting fish as default shell..." "chsh -s /usr/bin/fish"



script_ok $N
