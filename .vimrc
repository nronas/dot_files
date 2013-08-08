call pathogen#infect()
filetype plugin indent on
autocmd vimenter * NERDTree
autocmd BufWritePre * :%s/\s\+$//e
let &t_Co=256
syntax on
colorscheme solarized
set tabstop=2
set shiftwidth=2
set expandtab
set number
