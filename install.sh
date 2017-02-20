#! /bin/bash

ins_dir=$(pwd)
if [ -e $HOME/.vimrc ] 
then
	rm $HOME/.vimrc
fi
#if [ -e $HOME/.vim ] 
#then
#	rm -rf $HOME/.vim
#fi
cp ./.vimrc $HOME/.vimrc
cd ../
cp -r $ins_dir $HOME/.vim
mkdir -p $HOME/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \
	$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

