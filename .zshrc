
# Load antigen plugins
source ~/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle mafredri/zsh-async@main
antigen apply


# Load zprof and zmv (modules included with zsh)
zmodload zsh/zprof
autoload zmv
autoload -U add-zsh-hook


# Compinstall settings
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle ':completion:*' original true
zstyle ':completion:*' verbose true
autoload -Uz compinit
compinit


# Disable beep
unsetopt beep


# Preferred cli editors
export EDITOR='nano'
export VISUAL='nano'


# Use emacs-like keybindings
bindkey -e


# Colors (https://geoff.greer.fm/lscolors/)
# macOS / FreeBSD 
export LSCOLORS="ExFxcxdxbxegedabagacad" 
# WSL / GNU Linux
export LS_COLORS="di=1;34:ln=1;35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"


# Variables & OS Customs
source "$DOTFILES_PATH/zsh/variables.zsh"
# Aliases
source "$DOTFILES_PATH/zsh/aliases.zsh"
# Load private aliases
if [[ -s ${PRIVATE_DOTFILES_PATH}/zsh/aliases.sh ]]; then
  source "${PRIVATE_DOTFILES_PATH}/zsh/aliases.sh"
fi
# Functions
source "$DOTFILES_PATH/zsh/functions.zsh"
# TrueNAS utils
source "$DOTFILES_PATH/zsh/truenas.zsh"
# History and Substring search
source "$DOTFILES_PATH/zsh/history.zsh"
# Git (https://laptrinhx.com/a-fast-customizable-pure-shell-asynchronous-git-prompt-for-zsh-3656470288/)
source "$DOTFILES_PATH/zsh/git-prompt.zsh/git-prompt.zsh"
source "$DOTFILES_PATH/zsh/git-prompt-theme.zsh"
# Node.js
# source "$DOTFILES_PATH/zsh/node.zsh"
# Python
source "$DOTFILES_PATH/zsh/python.zsh"
# Time
source "$DOTFILES_PATH/zsh/time.zsh"
# Prompt definition
source "$DOTFILES_PATH/zsh/prompt.zsh"