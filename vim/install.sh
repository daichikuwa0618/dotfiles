#! /bin/zsh

# AstroNvim を使うので通常の vimrc の symlink はコメントアウトしておく
# AstroNvim を辞めたくなったら戻せば OK
ln -sf $DOTPATH/vim/astronvim_config.init.lua $HOME/.config/nvim/lua/user/init.lua


# for NeoVim
# ln -sf $DOTPATH/vim/vimrc $HOME/.config/nvim/init.vim
# for Vim
# ln -sf $DOTPATH/vim/vimrc $HOME/.vimrc

# coc.nvim
# ln -sf $DOTPATH/vim/config/plugin-config/coc-settings.json $HOME/.config/nvim/coc-settings.json
