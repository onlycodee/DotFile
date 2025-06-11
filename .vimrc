call plug#begin()

" List your plugins here
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/ReplaceWithRegister'

call plug#end()

let mapleader = ","

" Common settings
set visualbell
set number relativenumber
set nu rnu
set ignorecase
set smartcase
set incsearch
set hlsearch
set clipboard+=unnamed
set showmode
set viminfo='100,f1
set nocompatible " This is usually the first line, turns off vi compatibility
set backspace=indent,eol,start " Make backspace work like modern editors
" Add other settings below

" Map perso ---------------------------------------------
nnoremap Y y$

inoremap jj <Esc>
vnoremap mm <Esc>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap H gT
nnoremap L gt

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

nnoremap cn *Ncgn
nnoremap <esc> :noh<return><esc>

map F <Action>(ReformatCode)
syntax on
colorscheme murphy 

map <Leader> <Plug>(easymotion-prefix)


" Cursor shape: thin in Insert mode, block in Normal mode
let &t_SI = "\033[6 q" " Insert mode: vertical line
let &t_EI = "\033[2 q" " Normal mode: block
let &t_SR = "\033[4 q" " Replace mode: underline


