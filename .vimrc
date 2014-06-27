"============  Standard VIM OPTIONS ============
" Enable line numbers on the left hand side
set number
" Enable syntax highlighting
syntax on
" Enable plugins
filetype plugin on
" Better command-line completion
set wildmenu
" Highlight text searches
set hlsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Allow backspacing over autoindent, line breaks, and start of insert action
set backspace=indent,eol,start
" Keep same indent as current line when opening new line
set autoindent
" Display cursor position on last line of the window 
set ruler
" Always display the status line
set laststatus=2
" Instead of failing command, present dialog if unsaved changes
set confirm
" Use visual bell instead of beeping when doing something wrong
set visualbell
set t_vb=
" Enable mouse in all modes
set mouse=a
" Set command window height to 2 lines
set cmdheight=2
" Quickly timeout on keycodes and on mappings
set timeout timeoutlen=200 ttimeout ttimeoutlen=200
" Use F11 to toggle between paste and nopaste
set pastetoggle=<F11>

" Use 2 spaces instead of tabs
set shiftwidth=2
set softtabstop=2
set expandtab

" Map jk and kj to <Esc> to exit insert mode.  We need to use F11 to toggle to
" paste mode before pasting any string with jk or kj, then switch back. When
" inserting jk or kj manually, we will need to type the keys slowly so that the 
" key mapping times out.  Using jk or kj to escape is easier than many other
" alternatives.
ino jk <Esc>
ino kj <Esc>

" Map shift-j and shift-k to tab up and tab down for easier switching between
" tabbed windows.
nno <S-j> gT
nno <S-k> gt

" Set a vertical line for long line width. This will give us a visual
" indicator for cases in which line length is approaching 80 chars 
set colorcolumn=80



