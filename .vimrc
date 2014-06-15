set nocompatible

"""enable syntax highlighting"""
filetype off
filetype plugin indent on
syntax on

"""Standardize spacing for python"""
set modelines=0
set tabstop=4
set nocompatible

"""enable syntax highlighting"""
filetype off
filetype plugin indent on
syntax on
colorscheme torte

"""Standardize spacing for python"""
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab



set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set number
set undofile
set undodir=$HOME/.vim/undo

"""fix search""" 
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"""Wrap text and add line to long indicator"""
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"""Map some keys to make things easier"""
let mapleader = ","

nnoremap ; :
nnoremap <leader><space> :noh<cr>
nnoremap / /\v
vnoremap / /\v
inoremap jj <ESC>


map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"""Fix copy and paste"""
set pastetoggle=<F2>


set columns=100

"""Plugin settings"""

"""Vundle specific"""
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/syntastic'
call vundle#end()

"""Colorschemes for vim"""
set t_Co=256

"""Nerdtree specif"""
map <F3> :NERDTreeToggle<CR>

"""Powerline Specific"""

set laststatus=2

"""CtrlP specific"""

let g:ctrlp_max_height=30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

