#! /bin/sh

DOTPATH=$HOME/dotfiles

echo "\$DOTPATH : $DOTPATH"
echo "Created dotfile symbolic links."
cd $DOTPATH

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
ln -sf "$DOTPATH"/gitignore_global "$HOME"/.config/git/ignore
printf "    %-25s -> %s\n" "\$DOTPATH/gitignore_global" "\$HOME/.config/git/ignore"

echo ""
