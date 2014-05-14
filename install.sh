#!/usr/bin/env sh

if [[ -e ~/.vim || -e ~/.vimrc ]]; then
    echo "Remove existing Vim config from ~/.vimrc and ~/.vim before install."
    exit $?
fi

git clone https://github.com/vitalk/sanevi ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/.vim/vimrc ~/.vimrc
vim +BundleInstall +qall
