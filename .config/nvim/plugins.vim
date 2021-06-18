
call plug#begin('~/.vim/plugged')

"" Plug 'patstockwell/vim-monokai-tasty'
"" Plug 'dikiaap/minimalist'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"" Plug 'scrooloose/nerdtree'
" Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'bkad/camelcasemotion'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

" colorscheme minimalist
"" let g:airline_theme='minimalist'

"" let g:vim_monokai_tasty_italic = 1
"" colorscheme vim-monokai-tasty
"" let g:airline_theme='monokai_tasty'

" Vim Startify
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]

" vim-gitgutter
let g:gitgutter_highlight_linenrs = 1

