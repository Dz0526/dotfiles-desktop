#!/bin/bash

DOT_FILES=(.bashrc .bash_profile .viminfo .vimrc .Xresources .xprofile .gitconfig .dir_colors .inputrc)

for file in ${DOT_FILES[@]}
do
    mv $HOME/$file $HOME/backup/
done
