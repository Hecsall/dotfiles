# Dotfiles

My personal Dotfiles repository.

This dotifles repo contains a **private git submodule** to store sensitive data.\
`nano-highlight` is also added as a submodule to pull updated Nano syntax highlighting rules.

## Setup

- Install ZSH
- Clone this repo under `$HOME` with this command
  
    ```sh
    cd $HOME
    git clone --recurse-submodules --shallow-submodules https://github.com/Hecsall/dotfiles .dotfiles
    ```

- The install script will create symlinks in your home directory **removing existing files**, so be sure to **backup them first**.
- Read the point above again, just to be sure.
- Install with `./install.sh`
