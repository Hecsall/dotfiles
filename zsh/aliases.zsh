#!/bin/zsh

# Utility
alias .u="update-dotfiles"

# LS aliases
alias ls='ls --color=auto'
alias l='ls -1ah'
alias la='ls -lah'

# Git
alias gl="git pull"
alias glog='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias gitgud="git add . ; git commit -m'(ノಠ益ಠ)ノ彡┻━┻' ; git push"