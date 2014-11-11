#!/bin/bash

symlink () {
  src=$1
  target=$2

  echo "Adding symlink for $src => $target"

  if [ -f $src ] && [ ! -f $target ]; then
    ln -s $src $target
    echo "-- added"
  else
    echo "-- skipped; already exists"
  fi
}

echo "Setting up dotfiles"
mkdir -p $HOME/.vim/colors/

DOTFILES_PATH=$(pwd)
symlink $DOTFILES_PATH/vimrc $HOME/.vimrc
symlink $DOTFILES_PATH/vim/colors/molokai.vim $HOME/.vim/colors/molokai.vim
symlink $DOTFILES_PATH/vim/colors/wombat256mod.vim $HOME/.vim/colors/wombat256mod.vim
symlink $DOTFILES_PATH/vim/colors/wombat256.vim $HOME/.vim/colors/wombat256.vim
symlink $DOTFILES_PATH/vim/colors/wombat.vim $HOME/.vim/colors/wombat.vim
symlink $DOTFILES_PATH/gitconfig $HOME/.gitconfig
symlink $DOTFILES_PATH/bash_profile $HOME/.bash_profile
symlink $DOTFILES_PATH/bashrc $HOME/.bashrc
symlink $DOTFILES_PATH/bash_aliases $HOME/.bash_aliases

VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim" 
if [ ! -d $VUNDLE_DIR ]; then
  echo "Installing Vundle..."
  git clone https://github.com/gmarik/Vundle.vim.git $VUNDLE_DIR
fi

echo "Done!"

# bashrc
