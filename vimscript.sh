#!/bin/bash
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/benji2512/VimSetUp.git ~/VimSetUp
cd VimSetUp/
mv .vimrc  ~/
cd ~/
rm -rf ~/VimSetUp
vim +PluginInstall +qall
