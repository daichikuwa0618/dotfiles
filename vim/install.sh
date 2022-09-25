#! /bin/zsh

# for NeoVim
ln -sf $DOTPATH/vim/vimrc $HOME/.config/nvim/init.vim
# for Vim
ln -sf $DOTPATH/vim/vimrc $HOME/.vimrc

# coc.nvim
ln -sf $DOTPATH/vim/config/plugin-config/coc-settings.json $HOME/.config/nvim/coc-settings.json
