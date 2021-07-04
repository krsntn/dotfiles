
" Basic Settings ===================================
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax on
lang en_US.UTF-8
filetype plugin indent on

set hidden
set nobackup
set noswapfile
set mouse=a
set encoding=utf-8
set noerrorbells
set ignorecase
set smartcase
set expandtab
set smartindent
set copyindent
set shiftwidth=2
set softtabstop=2
set number
set relativenumber
set cursorline
set textwidth=79
set colorcolumn=80
set wrap
set clipboard=unnamedplus
set completeopt=menuone,noinsert
set background=dark
set signcolumn=yes
set updatetime=300
set splitbelow
set splitright

autocmd FocusGained,BufEnter * :silent! !

" auto quit nvim when last buffer is coc explorer
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
