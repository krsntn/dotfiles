
call plug#begin('~/.vim/plugged')

" theme
Plug 'morhetz/gruvbox'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" better coding experience
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" start up screen
Plug 'mhinz/vim-startify'

" syntax highlighting for javascript
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'

" syntax highlighting for typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

" theme
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_powerline_fonts = 1

" coc
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-emmet',
  \ 'coc-explorer',
  \ 'coc-eslint',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-yank'
  \ ]

highlight CocErrorHighlight ctermfg=Red guifg=#ff0000
highlight CocWarningHighlight ctermfg=Brown guifg=#ff922b

" vim startify
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]

" vim-gitgutter
let g:gitgutter_highlight_linenrs = 1

" fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --fixed-strings --no-heading --color=always --smart-case --glob "!{.git,node_modules}/*" '.shellescape(<q-args>),
  \   1,
  \   fzf#vim#with_preview({'options': ['--delimiter=--nth 4..', '--layout=reverse', '--exact']}),
  \   <bang>0)

