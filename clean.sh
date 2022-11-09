#!/bin/bash

files=(
    ~/.local/share/nvim
    ~/.config/nvim

    ~/.vim
    ~/.vimrc

    ~/.tmux.conf
    ~/.zshrc
    ~/.oh-my-zsh
)

files_to_remove=()
for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        files_to_remove+=("$file")
    fi
done

if [ ${#files_to_remove[@]} -eq 0 ]; then
    echo "No file needs to remove."
    exit
fi

echo "Files to remove:"
for file in "${files_to_remove[@]}"; do
    echo "$file"
done

while true; do
    read -p "Continue?[y/n] " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "removing..."
for file in "${files_to_remove[@]}"; do
    rm -rf "$file"
done

