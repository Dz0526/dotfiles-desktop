#!/bin/bash

DOT_FILES=(.bashrc .bash_profile .viminfo .vimrc .Xresources .xprofile .gitconfig .dir_colors .vim .config .inputrc .czrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
