#!/bin/bash
DOT_DIR="$HOME/dotfiles"
if if [ ! -d ${DOT_DIR} ]; then
    for f in *
    do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".gitignore" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue
        [[ "$f" == "README.md" ]] && continue
        [[ "$f" == "install.sh" ]] && continue

        ln -snf $DOT_DIR/"$f" $HOME/"$f"
        echo "Installed .$f"
    done
else
    echo "dotfiles already exists"
    exit 1
fi