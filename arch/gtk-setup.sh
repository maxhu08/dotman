#!/bin/sh

source utils/utils.sh

N="gtk-install"
S="2"

script_start $N

# install required packages
exec_step $N 1 $S "installing required packages..." "paru -S ttf-jetbrains-mono-nerd bibata-cursor-theme-bin"

# copy gtk-3.0 settings.ini
exec_step $N 2 $S "copying custom fish config..." "mkdir -p ~/.config/gtk-3.0;cp ../resources/gtk-3.0-settings.ini ~/.config/gtk-3.0/settings.ini"



script_ok $N
