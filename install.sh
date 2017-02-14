#! /bin/bash

ins_dir=$(pwd)
cd ../
mv ins_dir $HOME
cd $HOME
mv ins_dir .vim
cd .vim
cp ./.vimrc $HOME/.vimrc
