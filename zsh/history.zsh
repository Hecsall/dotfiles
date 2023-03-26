
# History settings
HISTFILE=~/.zsh_history
HISTSIZE=15000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE # do not save lines starting with a space


# History navigation - history substring search (loaded with antigen)
bindkey $HSS_UP_ARROW history-substring-search-up
bindkey $HSS_DOWN_ARROW history-substring-search-down