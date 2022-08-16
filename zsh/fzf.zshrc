#! /bin/zsh

# fzf によって cd する
function fdgwt() {
    # カレントディレクトリが Git リポジトリ上かどうか
    git rev-parse &>/dev/null
    if [ $? -ne 0 ]; then
        echo fatal: Not a git repository.
        return
    fi

    local selectedWorkTreeDir=`git worktree list | fzf | awk '{print $1}'`

    if [ "$selectedWorkTreeDir" = "" ]; then
        # Ctrl-C.
        return
    fi

    cd ${selectedWorkTreeDir}
}

# git worktree list -> git worktree remove
function gwtrm() {
  # カレントディレクトリが Git リポジトリ上かどうか
  git rev-parse &>/dev/null
  if [ $? -ne 0 ]; then
      echo fatal: Not a git repository.
      return
  fi

  local selectedWorktreeDir=`git worktree list | fzf | awk '{print $1}'`

  if [ "$selectedWorktreeDir" = "" ]; then
    # Ctrl-C.
    return
  fi

  echo "removing worktree at: ${selectedWorktreeDir}"
  git worktree remove ${selectedWorktreeDir}
}

