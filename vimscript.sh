#!/bin/bash
cd ~/
echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Starting ssh cloning"
git clone git@github.com:benji2512/VimSetUp.git ~/VimSetUp
echo "finished cloning making .vimrc file"
cd VimSetUp/
mv .vimrc  ~/
cd ~/
echo "Installing Plugins"
vim +PluginInstall +qall
echo "Finished Plugin Install"
rm -rf ~/VimSetUp
