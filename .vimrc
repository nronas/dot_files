set nocompatible
set backspace=indent,eol,start

call pathogen#infect()
autocmd BufWritePre * :%s/\s\+$//e
filetype plugin indent on
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set cursorline
set t_Co=256
syntax enable
set background=dark
"let g:hybrid_use_Xresources = 1
set guifont=Monaco:h15
color hybrid

autocmd vimEnter * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
nnoremap <C-e> :NERDTreeToggle<CR>

:au FocusLost * :set number
:au FocusGained * :set relativenumber

let g:indent_guides_start_level = 2
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

let mapleader = ","

set colorcolumn=80
let NERDTreeShowHidden=1

autocmd! bufwritepost vimrc source ~/.vim/vimrc
