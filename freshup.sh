#!/bin/bash


sudo apt-get install -y \
    vim \
    curl \
    wget \
    git \
    tmux \

wget https://raw.githubusercontent.com/mtnalonso/vimrc/master/.vimrc

function install_vim-plug {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function c_installation {
    sudo apt-get install \
        gcc \
        gdb \
        make
}
