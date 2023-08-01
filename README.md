# Dotfiles

My personal Dotfiles repository.

## Notes

- This dotifles repo contains a **private git submodule** to store sensitive data.
- [nano-highlight](https://github.com/serialhex/nano-highlight) is also added as a submodule to pull updated Nano syntax highlighting rules.
- I use [Antigen](https://github.com/zsh-users/antigen) to pull some plugins needed for ZSH
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Command suggestions while typing
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Syntax highlighting
    - [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search): Search past commands in history with up-down arrows (even partial search)
    - [zsh-async](https://github.com/mafredri/zsh-async): Used to load git prompt asynchronously, since it can be slow with big repos
- [git-prompt.zsh](https://github.com/olivierverdier/zsh-git-prompt) is included to provide git prompt customization

## Setup

- Install ZSH
- Clone this repo under `$HOME` with this command
  
    ```sh
    cd $HOME
    git clone --recurse-submodules --shallow-submodules https://github.com/Hecsall/dotfiles .dotfiles
    # Private submodule is checked out as a detached head, so I need to enter and manually checkout master
    cd .dotfiles/private
    git checkout master
    ```

- The install script will create symlinks in your home directory **removing existing files**, so be sure to **backup them first**.
- Read the point above again, just to be sure.
- Install with `./install.sh`
