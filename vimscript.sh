#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/benji2512/VimSetUp.git ~/
cd VimSetUp/
mv .vimrc  ~/
vim +PluginInstall +qall
