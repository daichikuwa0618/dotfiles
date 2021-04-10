set -e
set -o pipefail

# change default shell to zsh
chsh -s /bin/zsh

#####################
## Prezto
#####################
# clone Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# setup Prezto
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

####################
# sudo
####################

# enable TouchID
if ! grep -Eq '^auth\s.*\spam_tid\.so$' /etc/pam.d/sudo; then
  ( set -e; set -o pipefail
    # add pam_tid.so as a first auth
    pam_sudo=$(awk 'fixed||!/^auth /{print} !fixed&&/^auth/{print "auth       sufficient     pam_tid.so";print;fixed=1}' /etc/pam.d/sudo)
    sudo tee /etc/pam.d/sudo <<<"$pam_sudo"
  )
fi

# enable TouchID in tmux sudo

if ! grep -Eq '^auth\s.*\spam_reattach\.so$' /etc/pam.d/sudo; then
  ( set -e; set -o pipefail
    # install pam_reattach.so if don't have
    if [[ ! -x /usr/local/lib/pam/pam_reattach.so ]]; then
      type cmake 2>/dev/null || brew install cmake
      cd $(mktemp -d "${TMPDIR:-/tmp}/tmp.${1:-pam_reattach}.XXXXXXXXXX")
      git clone https://github.com/fabianishere/pam_reattach.git .
      cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local
      sudo make install
    fi
    # add pam_reattach.so just before pam_tid.so
    pam_sudo=$(awk 'fixed||!/^auth .* pam_tid.so$/{print} !fixed&&/^auth/{print "auth       optional       pam_reattach.so";print;fixed=1}' /etc/pam.d/sudo)
    sudo tee /etc/pam.d/sudo <<<"$pam_sudo"
  )
fi

# enable Watch auth in tmux sudo

if ! grep -Eq '^auth\s.*\spam_watchid\.so$' /etc/pam.d/sudo; then
  ( set -e; set -o pipefail
    # install pam_watchid.so if don't have
    if [[ ! -x /usr/local/lib/pam/pam_watchid.so ]]; then
      cd $(mktemp -d "${TMPDIR:-/tmp}/tmp.${1:-pam_watchid}.XXXXXXXXXX")
      git clone https://github.com/biscuitehh/pam-watchid.git .
      sudo make install
    fi
    # add pam_watchid.so just before pam_tid.so
    pam_sudo=$(awk 'fixed||!/^auth .* pam_tid.so$/{print} !fixed&&/^auth/{print "auth       sufficient     pam_watchid.so";print;fixed=1}' /etc/pam.d/sudo)
    sudo tee /etc/pam.d/sudo <<<"$pam_sudo"
  )
fi

