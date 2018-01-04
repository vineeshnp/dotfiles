#!/bin/bash

# Installing nvim
if ! command -v nvim
then
echo Installing neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim
sudo apt-get install -y python-dev python-pip python3-dev python3-pip
fi

# Install vim plug for neovim
test -d  $HOME/.local/share/nvim/site/autoload/plug.vim || curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install PyPI for neovim
pip3 install neovim

# Installing zsh
if ! command -v zsh
then
echo Installing zsh
sudo apt-get install -y zsh
fi

# Install zsh themes oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Beautify zsh  with custome theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

