#!/bin/bash
cd ~/
echo "Starting cloning"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/benji2512/VimSetUp.git ~/VimSetUp
echo "finished cloning making .vimrc file"
cd VimSetUp/
mv .vimrc  ~/
cd ~/
vim +PluginInstall +qall
echo "Finished Plugin Install"
rm -rf ~/VimSetUp
NAME=$(lsb_release -is)
if [ $NAME = 'Ubuntu' ]
then
    sudo apt install build-essential cmake python3-dev
elif [ $NAME = 'openSUSE' ]
then
    sudo zypper install cmake
    sudo zypper install -t pattern devel_C_C++ devel_python3
fi
