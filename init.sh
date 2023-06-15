#!/usr/bin/env zsh
set -e

# Get the directory of the dotfiles
DOTFILES_DIR=${0:a:h}

init_zsh() {
    export ZINIT_HOME=$HOME/.zinit
    ZINIT_HOME_REALDIR="$DOTFILES_DIR/zinit"
    git clone https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME_REALDIR
    ln -sf "$ZINIT_HOME_REALDIR" "$HOME/.zplug"
    ln -sf "$CONFIG_DIR/zsh" "$HOME/.zsh"
    ln -sf "$CONFIG_DIR/zsh/zshrc" "$HOME/.zshrc"
    echo "TODO: zinit install"
}

init() {
    init_zsh
    echo "TODO: Powerlevel 10k install"
}

init
