# read .bashrc
test -r ~/.bashrc && . ~/.bashrc

# path pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
