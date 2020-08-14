# shell
# change default shell to zsh
#chsh -s /bin/zsh
#
#cd ~
#
## clone Prezto
#git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#
## setup Prezto
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

# sudo
# apple watch
#git clone https://github.com/biscuitehh/pam-watchid.git
#cd pam-watchid
#sudo make install
#cd ..
rm -rf pam-watchid
sudo sed -e '1a auth       sufficient     pam_watchid.so' /etc/pam.d/sudo
