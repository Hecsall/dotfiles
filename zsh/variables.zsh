
# ZSH Settings
# Disable default "Python venv" prompt to customize it later
VIRTUAL_ENV_DISABLE_PROMPT=true

export HSS_UP_ARROW="^[[A"
export HSS_DOWN_ARROW="^[[B"

# Prompt Customization
export NODE_SYMBOL='⬢'
export PROMPT_SYMBOL='シ' # Apple \UF8FF
export PROMPT_COMPONENTS=(
    '$PYTHON_VENV_PROMPT'
    '%B%F{105}${$(hostname -s):l}%f %F{cyan}%~%f%b'
    '$(gitprompt)'
    '${NODE_PROMPT}'
    $'\n'
    '%(?.%F{219}.%F{red})$PROMPT_SYMBOL%f '
)


# Add .local to PATH
export PATH=$PATH:~/.local/bin


# Change variables based on OS Type
case "$OS_INFO" in

  # macOS
  *Darwin*)
    # macOS iTerm 2 intergration
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
    # PATH to flutter bin
    export PATH="$PATH:/Users/simone/Documents/flutter/bin"
  ;;

  # WSL
  *WSL2*)
    HSS_UP_ARROW="$terminfo[kcuu1]"
    HSS_DOWN_ARROW="$terminfo[kcud1]"
  ;;

  # TrueNAS
  *truenas*)
    HSS_UP_ARROW="$terminfo[kcuu1]"
    HSS_DOWN_ARROW="$terminfo[kcud1]"
  ;;
esac