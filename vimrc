" -------------------------------------------------
" General
" -------------------------------------------------

set nocompatible

" Install pathogen
execute pathogen#infect()

filetype plugin on
let mapleader="," " change mapleader from \ to ,

" -------------------------------------------------
" Visual elements
" -------------------------------------------------

set number " line numbers
syntax on
set background=dark
colorscheme solarized

" -------------------------------------------------
" searching and patters
" -------------------------------------------------

set incsearch " Hightlight pattern matches as you type
set ignorecase " Ingore case when using a search pattern
set smartcase " Override 'ignorecase' when pattern has upper case character
set showmatch " Show matching brackets when text indicator is over them

set hlsearch " Enable highlighting of matches
nnoremap <esc> :noh<return><esc> " Clear highlighting by hitting escape

" -------------------------------------------------
" Backup and temp files
" -------------------------------------------------

" Turn backup off, since most stuff is in git anyway
set nobackup
set nowb
set noswapfile

" -------------------------------------------------
" Tabs
" -------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

set smartindent
set autoindent 
set nowrap " do not wrap lines!

" load indent file for the current filetype
filetype indent on

" -------------------------------------------------
" General keyboard mappings
" -------------------------------------------------

imap jk <Esc>

" toogle open/close NERDTree window
map <F2>  :NERDTreeToggle<CR>

" jump to current buffer (=open file) in NERDTree window
map <leader>r :NERDTreeFind<cr>

" insert blank line without entering insert
map <C-o> o<ESC>

" open CtrlP in buffer files mode
nmap ; :CtrlPBuffer<CR>


" -------------------------------------------------
" Split windows
" -------------------------------------------------

" Make it easier to navigate between split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Opne new split panes to right and bottom which is more natural
set splitbelow
set splitright
