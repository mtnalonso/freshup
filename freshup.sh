#!/bin/bash

function install_vim-plug {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function c_installation {
    sudo apt-get install \
        gcc \
        gdb \
        make
}

function install_tig {
    tig_version='tig-2.3.3'
    sudo apt-get install -y libncurses5-dev libncursesw5-dev
    wget https://github.com/jonas/tig/releases/download/$tig_version/$tig_version.tar.gz
    tar -xzf $tig_version.tar.gz
    make -C $tig_version prefix=/usr/local
    sudo make -C $tig_version install prefix=/usr/local
    rm -rf $tig_version*
}


sudo apt-get install -y \
    vim \
    git \
    curl \
    wget \
    tmux \

wget https://raw.githubusercontent.com/mtnalonso/vimrc/master/.vimrc

install_vim-plug
c_installation
install_tig
