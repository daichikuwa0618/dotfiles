#!/bin/zsh

DOTPATH_VIM=$(cd $(dirname $0); pwd)

# AstroNvim を使うので通常の vimrc の symlink はコメントアウトしておく
# AstroNvim を辞めたくなったら戻せば OK
ln -sf $DOTPATH_VIM/astronvim_config.init.lua $HOME/.config/nvim/lua/user/init.lua

# for NeoVim
# ln -sf $DOTPATH_VIM/vimrc $HOME/.config/nvim/init.vim
# for Vim
# ln -sf $DOTPATH_VIM/vimrc $HOME/.vimrc

# coc.nvim
# ln -sf $DOTPATH_VIM/config/plugin-config/coc-settings.json $HOME/.config/nvim/coc-settings.json
