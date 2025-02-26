OS_INFO=$(uname -a)

case "$OS_INFO" in
  # macOS
  *Darwin*)
    # Java
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
    PATH="${JAVA_HOME}/bin:${PATH}"
    # Maven
    export M2_HOME="/Users/simone/Documents/apache-maven-3.9.9"
    PATH="${M2_HOME}/bin:${PATH}" 
    export MAVEN_OPTS="-Xmx2048m"
    # Sencha
    PATH="/opt/Sencha/Cmd:$PATH"
    # Postgresql
    export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
    # Python 3.12 Path
    export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
    # Flutter Path
    export PATH="/Users/simone/Documents/flutter/bin:${PATH}"
    # Brew
    if [ -d "/opt/homebrew/bin" ]; then
        export PATH="/opt/homebrew/bin:${PATH}"
    fi
    if [ -d "/opt/homebrew/sbin" ]; then
        export PATH="/opt/homebrew/sbin:${PATH}"
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
