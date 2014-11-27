set nocompatible
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

let mapleader=","
let maplocalleader=","
let g:mapleader=","
let g:Powerline_symbols='unicode'
let g:localvimrc_ask=0
let g:indentLine_char='┆'
let g:indentLine_color_term=0
let NERDTreeShowHidden=1

execute pathogen#infect()
filetype plugin indent on
syntax enable

colorscheme solarized

nmap <silent> <leader>c :tabnew<CR>
nmap <silent> <leader>t :tabnext<CR>
nmap <silent> <leader>p :tabprev<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

set background=dark

set t_Co=256
set noerrorbells
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

" Format xml files by default
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

iabbrev rpry require 'pry'; binding.pry

" Start NERDTree on start
" autocmd VimEnter * NERDTree

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
end
