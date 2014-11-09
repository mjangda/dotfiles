#!/bin/bash
echo "Setting up dotfiles"

# TODO: check actual dotfiles location
PATH="~/dotfiles"
# TODO: check that file doesn't exist already
ln -s $PATH/vimrc ~/.vimrc
ln -s $PATH/vim/colors/wombat256mod.vim ~/.vim/colors/wombat256mod.vim
ln -s $PATH/vim/colors/wombat256.vim ~/.vim/colors/wombat256.vim
ln -s $PATH/vim/colors/wombat.vim ~/.vim/colors/wombat.vim
ln -s $PATH/gitconfig ~/.gitconfig

# bashrc
