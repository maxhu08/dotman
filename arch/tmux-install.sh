#!/bin/bash

source utils.sh

# install tmux
exec_step 1 4 "installing tmux..." "sudo pacman -S tmux"

# installing tpm
exec_step 2 4 "installing tmux plugin manager (tpm)..." "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

# copy and source tmux conf
exec_step 3 4 "copying and sourcing custom tmux config..." "cp ../resources/tmux.conf "$HOME/.tmux.conf";tmux source-file ~/.tmux.conf"

# install tpm plugins
exec_step 4 4 "installing tpm plugins..." "~/.tmux/plugins/tpm/bin/install_plugins"



script_ok "tmux install script finished, you may need to run <PREFIX>I to ensure tpm plugins are installed"
