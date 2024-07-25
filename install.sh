#!/usr/bin/bash

CONFIG="$HOME/.config"
ZSH="$HOME/.config/zsh"

sudo apt update && sudo apt upgrade -y

sudo apt install -y git curl wget neovim zsh gcc tree-sitter-cli lsd fzf

mkdir -p $HOME/.config

[[ -d $ZSH ]] || git clone https://github.com/paulbknhs/nvim.git $CONFIG/nvim
[[ -d $ZSH ]] || git clone https://github.com/paulbknhs/zsh.git $ZSH
sudo ln -sf $ZSH/rc.zsh $HOME/.zshrc
sudo ln -sf $ZSH/zsh_plugins.txt $HOME/.zsh_plugins.txt

chsh $USER
