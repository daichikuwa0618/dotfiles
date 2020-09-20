#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias dotfiles='cd $HOME/dotfiles'
alias cd='cdls'
alias ...='cd ../..'
alias ....='cd ../../..'
alias zshrc='vi ~/dotfiles/dotfiles/.zshrc'
alias reload='source ~/.zshrc'
alias pana-dir='cd ~/work/panasonic-ios'
alias avatara-dir='cd ~/work/avatara-ios-prototype'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

function cdls() {
  # cdがaliasでループするので\をつける
  \cd "$@" && ls
}

function gwt() {
    GIT_CDUP_DIR=`git rev-parse --show-cdup`
    git worktree add ${GIT_CDUP_DIR}git-worktrees/$1 -b $1
}

