#!/bin/bash

source utils/utils.sh

N="neovim-install"
S="2"

script_start $N

# install neovim
exec_step $N 1 $S "installing neovim & more..." "sudo pacman -S --noconfirm neovim ripgrep unzip nodejs npm;curl -fsSL https://bun.sh/install | bash;bun i -g prettier biome eslint"

# use neovim-zen config
exec_step $N 2 $S "cloning mh's build of neovim (neovim-zen)..." "mkdir -p ~/.config/nvim;git clone https://github.com/maxhu08/neovim-zen ~/.config/nvim"



script_ok $N
