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


" ========== GENERAL VIM SETTINGS ==========
" Enable search highlighting
set hlsearch
" Enable line numbers
set number
" Use F11 to toggle between paste and nopaste
set pastetoggle=<F11>

" vim-sensible enables smarttab.  Here, we configure the rest:
" Set the display size of \t characters
set tabstop=4
" When hitting <TAB>, insert combination of \t and spaces for this width.
" This combination is deleted as if it were 1 \t when using backspace.
set softtabstop=2
" Set code-shifting width.  Since smarttab is enabled, this is also the tab
" insert size for the beginning of a line.
set shiftwidth=2
" When inserting tab characters, use spaces instead
set expandtab

" Instead of failing command, present dialog if unsaved changes
set confirm

" Enable mouse in all modes
set mouse=a

" Map jk and kj to <Esc> to exit insert mode.  We need to use F11 to toggle to
" paste mode before pasting any string with jk or kj, then switch back. When
" inserting jk or kj manually, we will need to type the keys slowly so that
" the key mapping times out.  Using jk or kj to escape is easier than many 
" other alternatives.
ino jk <Esc>
ino kj <Esc>

" Map shift-j and shift-k to tab up and tab down for easier switching
" between
" tabbed windows.
nno <S-j> gT
nno <S-k> gt

" Set a vertical line for long line width. This will give us a visual
" indicator for cases in which line length is approaching 80 chars 
set colorcolumn=80
 
