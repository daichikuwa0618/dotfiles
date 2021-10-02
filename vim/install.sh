#! /bin/zsh

DOTPATH=$HOME/dotfiles/vim

# for NeoVim
ln -sf $DOTPATH/vimrc $HOME/.config/nvim/init.vim
# for Vim
ln -sf $DOTPATH/vimrc $HOME/.vimrc

