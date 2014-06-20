"============  Standard VIM OPTIONS ============
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Enable plugins
filetype plugin on
" Better command-line completion
set wildmenu
" Highlight searches
set hlsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Allow backspacing over autoindent, line breaks, and start of insert action
set backspace=indent,eol,start
" Keep same indent as current line when opening new line
set autoindent
" Display cursor position on last line
set ruler
" Always display the status line
set laststatus=2
" Instead of fail command, present dialog if unsaved changes
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

" Map jk and kj to <Esc> when in insert mode
ino jk <Esc>
ino kj <Esc>

" Map shift-j and shift-k to tab up and tab down
nno <S-j> gT
nno <S-k> gt

" Set a vertical line for long line width
set colorcolumn=80

" ============== HASKELL SPECIFIC STUFF ===========

au Bufenter *.hs compiler ghc
:let g:haddock_browser = "firefox"
:let g:haddock_browser_callformat = "%s %s " . &shellredir . "/dev/null" . " &"
:let g:haddock_indexfiledir="~/"
:let g:haddock_docdir="/nix/store/1jp3vsjcl8ydiy92lzyjclwr943vh5lx-ghc-7.6.3/share/doc/ghc/html/"
:let g:haddock_browser_nosilent=1


set makeprg=cabal\ build



execute pathogen#infect()
