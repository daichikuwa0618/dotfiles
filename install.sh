#!/bin/zsh

DOTPATH=$(cd $(dirname $0); pwd)

echo "\$DOTPATH : $DOTPATH"
echo "Created dotfile symbolic links."

echo "start tmux"
sh $DOTPATH/tmux/install.sh
echo "end tmux"

echo "start vim"
sh $DOTPATH/vim/install.sh
echo "end vim"

echo "start xvim"
sh $DOTPATH/xvim/install.sh
echo "end xvim"

echo "start zsh"
sh $DOTPATH/zsh/install.sh
echo "end zsh"

# global gitignore
ln -sf $DOTPATH/gitignore_global $HOME/.config/git/ignore
printf "    %-25s -> %s\n" "\$DOTPATH/gitignore_global" "\$HOME/.config/git/ignore"
ln -sf $DOTPATH/gitconfig $HOME/.gitconfig
printf "    %-25s -> %s\n" "\$DOTPATH/gitconfig" "\$HOME/.gitconfig"

# lazygit の置き場を変更
lazygit -ucd ~/.config/lazygit
ln -sf $DOTPATH/lazygit.yml $HOME/.config/lazygit/config.yml
printf "    %-25s -> %s\n" "\$DOTPATH/lazygit.yml" "\$HOME/.config/lazygit/config.yml"

