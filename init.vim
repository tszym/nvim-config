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
set completeopt=preview,longest,menuone

" Use the hybrid dark colorscheme "
colorscheme hybrid

call plug#begin('~/.local/share/nvim/plugged')
Plug 'christoomey/vim-tmux-navigator'
" Help close delimiters as opened
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion', { 'for': 'terraform' }
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'

Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

Plug 'neomake/neomake'
call plug#end()
"
"""""""""""""
" vim-terraform-completion config

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1
" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

"""""""""""""
" vim-terraform config
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1

"""""""""""""
" vim-gutentags config
let g:gutentags_cache_dir = '~/.cache/vim-gutentags'

"""""""""""""
" Neomake config
let g:neomake_open_list = 2
call neomake#configure#automake('w')
