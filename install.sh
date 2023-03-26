# Get Dotfiles directory to be used for Symlinks
# Find the absolute path of the current install.sh script
# then removes "/install.sh" to get just the folder
INSTALL_FILE_PATH=$(realpath $0)
ABS_DOTFILES_PATH=${INSTALL_FILE_PATH%/install.sh}

# Install Antigen if missing
# Antigen is used for:
# - zsh-autosuggestions
# - zsh-history-substring-search
# - zsh-syntax-highlighting
# - zsh-async
if [ ! -f ~/antigen.zsh ]; then
    curl -L git.io/antigen > ~/antigen.zsh
fi

# Install Dotfiles
ln -sfnv $ABS_DOTFILES_PATH/.zshenv ~/.zshenv
ln -sfnv $ABS_DOTFILES_PATH/.zshrc ~/.zshrc
ln -sfnv $ABS_DOTFILES_PATH/.zprofile ~/.zprofile
ln -sfnv $ABS_DOTFILES_PATH/.nanorc ~/.nanorc
ln -sfnv $ABS_DOTFILES_PATH/nano-highlight ~/.nano


# Install Private dotfiles
# Check if the private folder exists and is not empty
if [ -d "$ABS_DOTFILES_PATH/private" ] && [ -n "$(ls -A $ABS_DOTFILES_PATH/private)" ]; then
    $ABS_DOTFILES_PATH/private/install.sh
fi
