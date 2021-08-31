#! /bin/sh

DOTPATH=~/dotfiles/dotfiles

echo "\$DOTPATH : $DOTPATH"
echo "Created dotfile symbolic links."
cd dotfiles
for f in .??*
do
  # Exclude files
  if [ "$f" = ".gitmodules" ] || [ "$f" = ".git" ] || [ "$f" = ".gitconfig" ] || [ "$f" = ".zshrc_legacy" ] || [ "$f" = ".bash_profile" ] || [ "$f" = ".bashrc" ];then
    continue
  fi

  ln -sf "$DOTPATH"/"$f" "$HOME"/"$f"
  if [ $? -eq 0 ]; then
    printf "    %-25s -> %s\n" "\$DOTPATH/$f" "\$HOME/$f"
  fi
done

# NeoVim の設定ファイルと Vim の config ファイルを統一する
ln -sf "$DOTPATH"/.vimrc "$HOME"/.config/nvim/init.vim
printf "    %-25s -> %s\n" "\$DOTPATH/.vimrc" "\$HOME/.config/nvim/init.vim"
# secret files
ln -sf "$DOTPATH"/secret.zshrc "$HOME"/secret.zshrc
printf "    %-25s -> %s\n" "\$DOTPATH/secret.zshrc" "\$HOME/secret.zshrc"
# global gitignore
ln -sf "$DOTPATH"/gitignore_global "$HOME"/.config/git/ignore
printf "    %-25s -> %s\n" "\$DOTPATH/gitignore_global" "\$HOME/.config/git/ignore"

echo ""
