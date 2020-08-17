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
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias zshrc='vi ~/dotfiles/dotfiles/.zshrc'
alias reload='source ~/.zshrc'
alias pana-dir='cd ~/work/panasonic-ios'

