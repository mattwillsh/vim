#!/bin/bash

# Symlink vimrc
if [[ ! -f $HOME/.vimrc ]]; then 
  # Get the full path of the vimrc 
  cd $( dirname $0 ) 
  [[ ! -f ${PWD}/vimrc ]] && echo "${PWD}/vimrc is missing" >&2 && exit 1
  ln -s ${PWD}/vimrc $HOME/.vimrc
fi

# Make sure vundle is present 
if [[ ! -d $HOME/.vim/bundle/vundle/.git ]]; then
  echo Installing vunlde and installing bundles
  cd $HOME/.vim
  git submodule init && git submodule update
  vim +BundleInstall +qall
fi
