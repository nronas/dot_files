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
set noshowmode
syntax enable
if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
set background=dark
colorscheme one
set guifont=Monaco:h15

autocmd vimEnter * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
nnoremap <C-e> :NERDTreeToggle<CR>

:au FocusLost * :set number
:au FocusGained * :set relativenumber
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = ""

let g:indent_guides_start_level = 2
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

let mapleader = ","

set colorcolumn=80
let NERDTreeShowHidden=1
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let g:ale_sign_error = '🚨'
let g:ale_sign_warning = '⚠️'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
hi CursorLineNr guifg=#ffc04c
" hi LineNr guifg=#ffc04c
let g:ale_linters_explicit = 1
let b:ale_linters = { 'ruby': ['ruby', 'rubocop'] }

map ic :s/^/#/g<CR>:let @/ = ""<CR>
map rc :s/^#//g<CR>:let @/ = ""<CR>
