#!/bin/zsh

DOTPATH_TMUX=$(cd $(dirname $0); pwd)

ln -sf $DOTPATH_TMUX/tmux.conf $HOME/.tmux.conf

