#!/bin/zsh

if [ -f ~/.zshrc ]; then
    cp ~/.zshrc.backup ~/.zshrc
fi
if [ -f ~/.vimrc ]; then
    cp ~/.vimrc.backup ~/.vimrc
fi
