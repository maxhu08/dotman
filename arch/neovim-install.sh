#!/bin/bash

source utils.sh

script_start "neovim-install script"

# install neovim
exec_step 1 2 "installing neovim & more..." "sudo pacman -S neovim ripgrep nodejs npm;curl -fsSL https://bun.sh/install | bash;bun i -g prettier biome eslint"

# use neovim-zen config
exec_step 2 2 "cloning mh's build of neovim (neovim-zen)..." "mkdir -p ~/.config/nvim;git clone https://github.com/maxhu08/neovim-zen ~/.config/nvim"



script_ok "neovim install script finished"
