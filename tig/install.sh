#!/bin/zsh

DOTPATH_TIG=$(cd $(dirname $0); pwd)

ln -sf $DOTPATH_TIG/tigrc $HOME/.tigrc

