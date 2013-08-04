"Turn off vi compatible mode
set nocompatible

" Get pathogen up and running
filetype off
call pathogen#incubate()
call pathogen#helptags()    

" Set filetype stuff to on
filetype plugin indent on

syntax on

"My color scheme
color molokai

"let g:molokai_original = 1
let g:rehash256 = 1
" You can switch buffers without saving them
set hidden

" Allow backspacing over everything in insert mode
set backspace=start,indent,eol

"Change the default leader of '\' to ','
let mapleader = ','

" Sane pasting
set pastetoggle=<F3>

"Automatically enable mouse usage
set mouse=a

"Set Encoding
scriptencoding utf-8

"Syntax highlighting
"syntax on

"Show line numbers
set number

"Tabs are 4 spaces
set tabstop=4

"Affects what happens when pressing >>,<< or ==
set shiftwidth=4

"If line is indented, automatically indent the new line
set autoindent

"Automatically indent line after opening a bracket
set smartindent

"Let backspace delete indent
set softtabstop=4

"Convert tabs to spaces
set expandtab

"Avoids 'hit enter'
set shortmess+=filmnrxoOtT

"Highlight current line
set cursorline

"Display the current mode
set showmode

"Bash-like completion when opening file
set wildmode=longest,list,full
set wildmenu

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Clear search
nmap <silent> ,/ :nohlsearch<CR>

set history=1000
set undolevels=1000

" Change the terminals title
set title

" 

" Easier windowing
noremap <silent> <leader>j :wincmd j<CR>
noremap <silent> <leader>k :wincmd k<CR>
noremap <silent> <leader>h :wincmd h<CR>
noremap <silent> <leader>l :wincmd l<CR>
noremap <silent> <leader>o :wincmd o<CR>
noremap <silent> <leader>x :close<CR>
noremap <silent> <leader>ml <C-W>L
noremap <silent> <leader>mk <C-W>K
noremap <silent> <leader>mh <C-W>H
noremap <silent> <leader>mj <C-W>J
noremap <silent> <leader>mx <C-W>x

" Set tab line to 2 for HTML and JS file extension
autocmd FileType html :setlocal sw=2 ts=2 sts=2
autocmd FileType js :setlocal sw=2 ts=2 sts=2

"See tabbed lines 
set list lcs=tab:\|\ 

"Copy from/to clipboard
set clipboard=unnamedplus

"Copy and pasting made easy
vmap <a-c> "*y
imap <a-p> "*p

"Shortcuts for editing and reloading $MYVIMRC
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


"Shortcut for NERDTree toggle
map <F2> :NERDTreeToggle<CR>

"For ctrlp to run
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Shortcut for starting ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Start NERDTree with vim and in every tab
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror
"autocmd VimEnter * wincmd w


"Pathogen
"execute pathogen#infect()
