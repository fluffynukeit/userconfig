"=========== VUNDLE CONFIG ==========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" LIST PLUGINS HERE
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sensible'

" modified warm desert colors for 256 color vim
Plugin 'rainux/vim-desert-warm-256'

" indentation alignment guides
Plugin 'Yggdroot/indentLine'

" Syntax checking and linting
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0

" slick status line
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

" Git commands from Vim
Plugin 'tpope/vim-fugitive'

" delimitMate adds paired parenths/brackets automatically
Plugin 'Raimondi/delimitMate' 
" add a key mapping to expand brackets to multiple lines
imap <C-c> <CR><Esc>O

" YouCompleteMe for autocompletion (this requires a manual compile step, too)
Plugin 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


" HASKELL PLUGINS

Plugin 'dag/vim2hs'
" autoformat haskell code
Plugin 'nbouscal/vim-stylish-haskell'



" PURESCRIPT PLUGINS
Plugin 'raichoo/purescript-vim'



" JAVASCRIPT PLUGINS

" (from oli.me.uk/2013/06/29/equipping-vim-for-javascript)
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

" react stuff (see syntastic-react, jaxbot's article for vim and react)
Plugin 'mxw/vim-jsx'
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

" Tern javascript semantic server (requires manual npm install step)
Plugin 'marijnh/tern_for_vim'

" VUNDLE Cleanup
call vundle#end()
filetype plugin indent on 




" ========== GENERAL VIM SETTINGS ==========
" Color settings
set t_Co=256
colorscheme desert-warm-256
set background=dark

" Enable incremental search
set incsearch
" Enable line numbers
set number
" Enable relative line numbers
set relativenumber
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

" Want to be able to switch from a buffer without saving it
set hidden

" Disable code folding.  It's pretty annoying to have code get folded all the
" time when you open a file
set nofoldenable

" If starting VIM without a filename, restore the previous buffers.
set viminfo^=%


