"=========== VUNDLE CONFIG ==========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" LIST PLUGINS HERE
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sensible'

" VUNDLE Cleanup
call vundle#end()
filetype plugin indent on 
