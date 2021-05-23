
# History settings
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt EXTENDED_HISTORY
setopt inc_append_history
setopt share_history
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE


# History navigation - history substring search
# https://github.com/zsh-users/zsh-history-substring-search
source "$PARTIALS_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey $HSS_UP_ARROW history-substring-search-up
bindkey $HSS_DOWN_ARROW history-substring-search-down