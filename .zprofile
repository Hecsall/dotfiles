OS_INFO=$(uname -a)

case "$OS_INFO" in
  # macOS
  *Darwin*)
    # Python 3.9 Path
    export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
    # Flutter Path
    export PATH="/Users/simone/Documents/flutter/bin:${PATH}"
    # Postgresql
    export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
    # Brew
    if [ -d "/opt/homebrew/bin" ]; then
        export PATH="/opt/homebrew/bin:${PATH}"
    fi
  ;;
esac

# Volta Node version manager
if [ -d "$HOME/.volta" ]; then
  export VOLTA_HOME="$HOME/.volta"
  export PATH="$VOLTA_HOME/bin:$PATH"
fi

# Load private profile
if [[ -s ${PRIVATE_DOTFILES_PATH}/zsh/profile.sh ]]; then
  source "${PRIVATE_DOTFILES_PATH}/zsh/profile.sh"
fi