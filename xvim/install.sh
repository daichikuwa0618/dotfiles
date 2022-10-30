#!/bin/zsh

DOTPATH_XVIM=$(cd $(dirname $0); pwd)

ln -sf $DOTPATH_XVIM/xvimrc $HOME/.xvimrc

