" Always use utf-8
set encoding=utf-8

" Line nubmers "
set number

" Mouse "
set mouse=a

" Change folder to match current file "
set autochdir

" Show the command being typed in "
set showcmd

" Jump to the next matching element when typing in a search "
set incsearch

" Show line and column numbers "
set ruler

" Always show the status line "
set laststatus=2

" Show completion options for commands in statusline "
set wildmenu

" Always keep a line between cursor and status line while scrolling down "
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

" Reloads the current file if it has changed "
set autoread

" Keep 1000 commands in history "
set history=1000

" Set the max number of tabs at 50 instead of 10 "
set tabpagemax=50

" Set the default method of indenting "
set autoindent
set expandtab
set shiftwidth=4 " Use tabs of width equals to four spaces"
set tabstop=4    "                                        "
set softtabstop=4    "                                        "
set backspace=indent,eol,start " Use backspace to remove indent "
" Set the indenting method depending on filetype "
filetype indent plugin on

" Show tabs using the defined listchars character "
set list
set listchars=tab:\|\ ,eol:↩

" Set the leader key to , "
let mapleader = ","

" Auto-complete menu
set completeopt=longest,menuone

" Use the hybrid dark colorscheme "
colorscheme hybrid

call plug#begin('~/.local/share/nvim/plugged')
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
