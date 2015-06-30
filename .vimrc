set nocompatible

" Vundle settings
call system("mkdir -p $HOME/.vim/{swap,undo,backup}")

let has_vundle=1
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
    echo "Installing Vundle"
    echo ""
    silent !git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
    let has_vundle=0
endif


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()


if has_vundle == 0
    :silent! PluginInstall
    :qa
endif

filetype plugin indent on

"Syntax highlighting
syntax on
au BufRead,BufNewFile *.jin set syntax=jinja



"Python Spacing(may be unnecessary with python-mode
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

""Doc settings
set autoindent
set showmode
set showcmd
set wildmenu
set visualbell
set cursorline
set ttyfast
set ruler
set relativenumber
set number
set wildmode=list:longest
set backspace=indent,eol,start
set laststatus=2
set encoding=utf-8
set scrolloff=3

"Dir Settings
set undofile
set undodir=$HOME/.vim/undo/
set directory^=$HOME/.vim/swap/
set backupdir^=$HOME/.vim/backup/

"Search/Replace Settings
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch


"Text wraping and EOL Settings
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81


"Key remap settings
let mapleader=","

nnoremap ; :
nnoremap / /\v
vnoremap / /\v
inoremap jj <ESC>

nnoremap <Leader><space> :noh<cr>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Copy/Paste Settings
set pastetoggle=<F2>
set clipboard=unnamed


"Plugin Settings

"Python-mode

let g:pymode_folding = 0
let g:pymode_virtualenv = 0


