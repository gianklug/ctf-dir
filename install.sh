#!/bin/bash

cp {ctf,ctfmv} "$HOME/.local/bin/"

case $SHELL in
    bash)
        echo "alias ctf='source ctf'" >> "$HOME/.bashrc"
        ;;
    zsh)
        echo "alias ctf='source ctf'" >> "$HOME/.zshrc"
        ;;
    *)
        ;;
esac

