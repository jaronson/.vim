syntax enable
filetype plugin indent on
set background=dark
colorscheme solarized

let mapleader=","
let maplocalleader=","

nmap <silent> <leader>c :tabnew<CR>
nmap <silent> <leader>t :tabnext<CR>
nmap <silent> <leader>p :tabprev<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

set noerrorbells
set nocompatible
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set number
set nowrap
set ruler
set hls
set incsearch
set laststatus=2
set synmaxcol=480
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list " show trailing whiteshace and tabs
set showmatch
set autoindent
set copyindent
set wildignore=*.swp,*.bak,*.pyc
set pastetoggle=<F2>
command! -bar -range=% Trim :<line1>,<line2>s/\s\+$//e

" Filetypes
au BufRead,BufNewFile *.ejs       set filetype=html
au BufRead,BufNewFile *.html      set filetype=html
au BufRead,BufNewFile *.rvmrc     set filetype=sh
au BufRead,BufNewFile *.css_t     set filetype=css
au BufRead,BufNewFile *.py        set tabstop=4
au BufRead,BufNewFile *.py        set shiftwidth=4
au BufRead,BufNewFile *.go        set noexpandtab
au BufRead,BufNewFile *.tmuxrc    set filetype=screen

" Format xml files by default
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

iabbrev rpry require 'pry'; binding.pry
