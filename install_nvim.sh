#!/bin/bash

#install nvim
mkdir -p $HOME/tools/ && cd $HOME/tools/
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar zxvf nvim-linux64.tar.gz

echo 'export PATH=$HOME/tools/nvim-linux64/bin:$PATH' >> $HOME/.bashrc
source $HOME/.bashrc

mkdir -p $HOME/.config/nvim
cp init.vim $HOME/.config/nvim/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
pip install pynvim
pip install jedi
pip install yapf
pip install pylint
