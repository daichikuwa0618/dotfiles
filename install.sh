#! /bin/sh

DOTPATH=~/dotfiles/dotfiles

echo "\$DOTPATH : $DOTPATH"
echo "Created dotfile symbolic links."
cd dotfiles
for f in .??*
do
  # Exclude files
  if [ "$f" = ".gitmodules" ] || [ "$f" = ".git" ] || [ "$f" = ".gitconfig" ] || [ "$f" = ".zprofile" ] || [ "$f" = ".zshrc_legacy" ] || [ "$f" = ".bash_profile" ] || [ "$f" = ".bashrc" ];then
    continue
  fi

  ln -sf "$DOTPATH"/"$f" "$HOME"/"$f"
  if [ $? -eq 0 ]; then
    printf "    %-25s -> %s\n" "\$DOTPATH/$f" "\$HOME/$f"
  fi
done
echo ""
