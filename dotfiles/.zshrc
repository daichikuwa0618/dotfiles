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
alias towards14='cd ~/work/Towards14'
alias vi='nvim'
alias vim='nvim'
alias arm="exec arch -arch arm64e /bin/zsh --login"
alias x64="exec arch -arch x86_64 /bin/zsh --login"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# goenv

export PATH="$HOME/.goenv/bin:$PATH"
export GOENV_DISABLE_GOPATH=1
eval "$(goenv init -)"

# sdk
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=$JAVA_HOME/bin:$PATH

# NeoVim

export XDG_CONFIG_HOME="$HOME/.config"

function cdls() {
    # cdがaliasでループするので\をつける
    \cd "$@" && ls
}

function gwt() {
    GIT_CDUP_DIR=`git rev-parse --show-cdup`
    git worktree add ${GIT_CDUP_DIR}git-worktrees/$1 -b $1
}

# tmux を自動で起動する
# ref: https://qiita.com/ssh0/items/a9956a74bff8254a606a
if [[ ! -n $TMUX && $- == *l* ]]; then
    # get the IDs
    ID="`tmux list-sessions`"
    if [[ -z "$ID" ]]; then
        tmux new-session
    fi
    create_new_session="Create New Session"
    ID="$ID\n${create_new_session}:"
    ID="`echo $ID | $PERCOL | cut -d: -f1`"
    if [[ "$ID" = "${create_new_session}" ]]; then
        tmux new-session
    elif [[ -n "$ID" ]]; then
        tmux attach-session -t "$ID"
    else
        :  # Start terminal normally
    fi
fi

# load secure file
SECURE_FILE="secret.zshrc"
if [[ -f $SECURE_FILE ]]; then
    source "$SECURE_FILE"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"

