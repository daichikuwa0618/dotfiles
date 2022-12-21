#!/bin/zsh

DOTPATH_TMUX=$(cd $(dirname $0); pwd)

ln -sf $DOTPATH_TMUX/alacritty.yml $HOME/.alacritty.yml

