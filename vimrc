set nocompatible   " Disable vi-compatibility
filetype off       " Required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" To install bundles run :BundleInstall or
" vim +BundleInstall +qall
" NOTE: Comments after Bundle command are not allowed
" Let vundle manage vundle. Required
Bundle 'gmarik/vundle' 

Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'tComment'
Bundle 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized

Bundle 'tpope/vim-git'
Bundle 'Lokaltog/vim-powerline'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'

Bundle 'msanders/snipmate.vim'

filetype plugin indent on

syntax enable

set nocp

" Tabs (2 spaces) and indents
set expandtab
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set smartindent

set wildmenu

set number numberwidth=6

" Show eol and other white chars
set listchars=eol:¬ " TODO: Can the EOL colour be changed?
set list
