#!/bin/bash

# Make sure vundle is present 
if [[ ! -e $HOME/.vim/bundle/vundle/README.md ]]; then
  cd $HOME/.vim
  git submodule init && git submodule update
fi

# Symlink vimrc
if [[ ! -f $HOME/.vimrc ]]; then 
  # Get the full path of the vimrc 
  cd $( dirname $0 ) 
  [[ ! -f ${PWD}/vimrc ]] && echo "${PWD}/vimrc is missing. Nothing to symlink." >&2 && exit 1
  ln -s ${PWD}/vimrc $HOME/.vimrc
else
  echo $HOME/.vimrc already exists >&2
  exit 1
fi

