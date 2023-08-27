#!/bin/bash

cp {ctf,ctfmv} "$HOME/.local/bin/"

case $SHELL in
    "/usr/bin/bash")
        echo "alias ctf='source ctf'" >> "$HOME/.bashrc"
        ;;
    "/usr/bin/zsh")
        echo "alias ctf='source ctf'" >> "$HOME/.zshrc"
        ;;
    *)
        echo "Unknown shell. Failed to create alias for ctf='source ctf'."
        ;;
esac

