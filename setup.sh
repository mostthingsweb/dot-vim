#!/usr/bin/env bash

function ask_rm() {
    TARGET=$1

    [ -d $TARGET ] && {
        rm -fri $TARGET
    } || {
        [ -f $TARGET ] && {
            rm -i $TARGET
        }
    }

    [ -e $TARGET ] && {
        echo "Not removing $TARGET; exiting"
        exit 1
    }
}

ask_rm ~/.vimrm
ask_rm ~/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://bitbucket.org/MostThingsWeb/dot-vim.git ~/.vim
