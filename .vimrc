call pathogen#infect()
autocmd vimenter * NERDTree
autocmd BufWritePre * :%s/\s\+$//e
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
let &t_Co=256
syntax enable
set background=dark
colorscheme railscasts
set tabstop=2
set shiftwidth=2
set expandtab

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

:au FocusLost * :set number
:au FocusGained * :set relativenumber
