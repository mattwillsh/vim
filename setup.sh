#!/bin/bash

# Symlink vimrc
if [[ ! -f $HOME/.vimrc ]]; then 
  # Get the full path of the vimrc 
  cd $( dirname $0 ) 
  [[ ! -f ${PWD}/vimrc ]] && echo "${PWD}/vimrc is missing" >&2 && exit 1
  ln -s ${PWD}/vimrc $HOME/.vimrc
fi

# Make sure vundle is present 
if [[ ! -e $HOME/.vim/bundle/vundle/.git ]]; then
  echo Installing vundle and installing bundles
  cd $HOME/.vim
  [[ -d bundle ]] || mkdir bundle
  cd bundle
  git clone https://github.com/gmarik/vundle.git
  vim +BundleInstall +qall
fi
