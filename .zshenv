# Find where the dotfiles repo is located by following the .zshenv symlink
# and removing (%) the last "/.zshenv" part
DOTFILES_PATH=${$(realpath ~/.zshenv)%/.zshenv}
PRIVATE_DOTFILES_PATH=${$(realpath ~/.zshenv)%/.zshenv}/private

. "$HOME/.cargo/env"