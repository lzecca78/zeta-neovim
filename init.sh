#!/bin/bash
#
# This script will check if neovim, ripgrep and nodejs are installed as they are required for the configuration to work.
#
#
# Check if neovim is installed
#
if ! command -v nvim &> /dev/null
then
    echo "Neovim is not installed. Please install it before running this script."
    exit
fi


# Check if ripgrep is installed
#
if ! command -v rg &> /dev/null
then
    echo "Ripgrep is not installed. Please install it before running this script."
    exit
fi

# Check if nodejs is installed

if ! command -v node &> /dev/null
then
    echo "Nodejs is not installed. Please install it before running this script."
    exit
fi


# bootstrap the configuration by symlink the project dir to the nvim config dir
#

if [ -d "$HOME/.config/nvim" ]; then
    echo "Neovim configuration already exists. Please remove it before running this script."
    exit
fi

ln -s $PWD $HOME/.config/nvim

echo "Neovim configuration has been successfully installed."
