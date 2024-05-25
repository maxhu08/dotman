#!/bin/sh

source utils/utils.sh

N="font-install"
S="1"

script_start $N

# install fonts
exec_step $N 1 $S "installing fonts..." "paru -S --noconfirm noto-fonts ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-apple-emoji"



script_ok $N
