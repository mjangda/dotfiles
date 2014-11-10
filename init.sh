#!/bin/bash
echo "Setting up dotfiles"

# TODO: check actual dotfiles location
DOTFILES_PATH=$(pwd)
# TODO: check that file doesn't exist already
ln -s $DOTFILES_PATH/vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/colors/
ln -s $DOTFILES_PATH/vim/colors/molokai.vim $HOME/.vim/colors/molokai.vim
ln -s $DOTFILES_PATH/vim/colors/wombat256mod.vim $HOME/.vim/colors/wombat256mod.vim
ln -s $DOTFILES_PATH/vim/colors/wombat256.vim $HOME/.vim/colors/wombat256.vim
ln -s $DOTFILES_PATH/vim/colors/wombat.vim $HOME/.vim/colors/wombat.vim
ln -s $DOTFILES_PATH/gitconfig $HOME/.gitconfig

VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim" 
if [ ! -d $VUNDLE_DIR ]; then
  echo "Installing Vundle..."
  git clone https://github.com/gmarik/Vundle.vim.git $VUNDLE_DIR
fi

echo "Done!"

# bashrc
