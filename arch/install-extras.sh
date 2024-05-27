#!/bin/sh

source utils/utils.sh

N="install-extras"
S="1"

script_start $N

# install extra programs
exec_step $N 1 $S "installing extra programs..." "paru -S --noconfirm feh nemo pavucontrol brave-bin discord visual-studio-code-bin nm-connection-editor"



script_ok $N
