#!/bin/sh

source utils/utils.sh

N="vscode-install"
S="2"

script_start $N

# install extra programs
exec_step $N 1 $S "installing vscode..." "paru -S --noconfirm visual-studio-code-bin"

exec_step $N 2 $S "copying settings and keybindings..." "cp ../resources/vsc-settings.json ~/.config/Code/User/settings.json;cp ../resources/vsc-keybindings.json ~/.config/Code/User/keybindings.json"



script_ok $N
