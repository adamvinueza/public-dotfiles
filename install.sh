#!/bin/zsh

if [ -f ~/.zshrc ]; then
    cp ~/.zshrc ~/.zshrc.backup
fi
if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.backup
fi
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
