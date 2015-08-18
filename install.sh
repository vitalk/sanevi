#!/usr/bin/env sh

if [[ -e ~/.vim || -e ~/.vimrc ]]; then
    echo "Remove existing Vim config from ~/.vimrc and ~/.vim before install."
    exit $?
fi

git clone https://github.com/vitalk/sanevi ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc

ln -s ~/.vim/ctags ~/.ctags

vim +PlugInstall +qall
