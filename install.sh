#!/bin/bash

cp {ctf,ctfmv} "$HOME/.local/bin/"

shopt -s extglob

# Ensure fzf is installed
if ! command -v fzf &> /dev/null; then
    echo "fzf is not installed. Please install fzf to use this script."
    return
fi

case $SHELL in
    *bash)
        echo "alias ctf='source ctf'" >> "$HOME/.bashrc"
        echo "alias ctfmv='source ctfmv'" >> "$HOME/.bashrc"
        ;;
    *zsh)
        echo "alias ctf='source ctf'" >> "$HOME/.zshrc"
        echo "alias ctfmv='source ctfmv'" >> "$HOME/.zshrc"
        ;;
    *)
        echo "Unknown shell. Failed to create aliases for ctf='source ctf' and ctfmv='source ctfmv'."
        ;;
esac

echo "Installation done. Run 'ctfmv <challengename>' to move files and 'ctf <challengename>' to switch to a ctf directory."
