#!/bin/bash
echo "Starting cloning"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/benji2512/VimSetUp.git ~/VimSetUp
echo "finished cloning making .vimrc file"
cd VimSetUp/
mv .vimrc  ~/
cd ~/
vim +PluginInstall +qall
echo "Finished Plugin Install"
