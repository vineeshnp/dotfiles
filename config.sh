#!/bin/bash

# Init vim plugged
dest=$HOME/.config/nvim/
mkdir -p $dest
\cp vim/init.vim $dest/init.vim

# create directories that vim uses
mkdir -p $HOME/.config/nvim/undo
mkdir -p $HOME/.config/nvim/backups

# Install zsh themes oh-my-zsh
cp zsh/.zshrc $HOME/
