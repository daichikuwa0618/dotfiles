#!/bin/zsh

DOTPATH_ZSH=$(cd $(dirname $0); pwd)

# components

mkdir -p $HOME/zsh
ln -sf $DOTPATH_ZSH/alias.zshrc $HOME/zsh/alias.zshrc
ln -sf $DOTPATH_ZSH/fzf.zshrc $HOME/zsh/fzf.zshrc

ln -sf $DOTPATH_ZSH/zpreztorc $HOME/.zpreztorc
ln -sf $DOTPATH_ZSH/zshrc $HOME/.zshrc
ln -sf $DOTPATH_ZSH/zprofile $HOME/.zprofile
ln -sf $DOTPATH_ZSH/secret.zshrc $HOME/secret.zshrc

