
call plug#begin('~/.vim/plugged')

Plug 'dikiaap/minimalist'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"" Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'bkad/camelcasemotion'

call plug#end()

colorscheme minimalist

let g:airline_theme='minilist'

" Vim Startify
 let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
