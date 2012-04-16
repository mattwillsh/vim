#!/bin/bash

if [[ ! -f $HOME/.vimrc2 ]]; then 
  # Get the full path of the vimrc 
  cd $( dirname $0 ) 
  [[ ! -f ${PWD}/vimrc ]] && echo "${PWD}/vimrc is missing. Nothing to symlink." >&2 && exit 1
  ln -s ${PWD}/vimrc $HOME/.vimrc
else
  echo $HOME/.vimrc already exists >&2
  exit 1
fi

