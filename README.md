This is my [neovim](https://neovim.io) config.

# Install

`pacman -S neovim`

This will require [the vim-plug window manager](https://github.com/junegunn/vim-plug). Make sure it is installed properly.

Make sure you run a `:checkhealth` command and follow the instructions to install the ruby client (needed for terraform plugins).

Gutentags will require ctags. `pacman -S ctags`

# Configuration

Neomake's makers and linters can quickly be annoying depending on your habits and the codebase you deal with.
See the neomake config section. Linting will be shown if the filetype is recognized and the linter is installed (yamllint, shellcheck and so on).

# Plugins

Plugins need to be loaded: `:PlugUpdate`
