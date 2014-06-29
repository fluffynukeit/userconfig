"=========== VUNDLE CONFIG ==========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" LIST PLUGINS HERE
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sensible'

Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_open=1

Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
" Add better unicode symbols, but don't bother with powerline fonts
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
autocmd vimenter * NERDTree
let NERDTreeWinSize=20

Plugin 'dag/vim2hs'

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
set tabstop=2
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

" Set a vertical line for long line width. This will give us a visual
" indicator for cases in which line length is approaching 80 chars 
set colorcolumn=80
 
" Set the command section height to 2 lines.  Useful if notices (like
" syntastic) are shown on command lines.
set cmdheight=2

" Colorscheme settings
set background=dark
colorscheme solarized

" Want to be able to switch from a buffer without saving it
set hidden

" =========== HASKELL (PLUGIN) SPECIFIC STUFF ============

