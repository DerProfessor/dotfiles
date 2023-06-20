#!/usr/bin/env zsh
set -e

# Get the directory of the dotfiles
DOTFILES_DIR=${0:a:h}

init_zsh() {
    ln -sf "$DOTFILES_DIR/zsh" "$HOME/.zsh"
    ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
    sed -i "s/DEFAULT_USER=\"\"/DEFAULT_USER=\"$USERNAME\"/" "$DOTFILES_DIR/zsh/zshrc"
}

init_zinit() {
    ZINIT_HOME_REALDIR="$DOTFILES_DIR/zinit"
    git clone https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME_REALDIR
    ln -sf "$ZINIT_HOME_REALDIR" "$HOME/.zinit"
    export ZINIT_HOME=$HOME/.zinit
}

init() {
    init_zsh
    init_zinit
    echo "TODO: Powerlevel 10k install"
}

init
