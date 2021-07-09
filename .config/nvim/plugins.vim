call plug#begin('~/.vim/plugged')

" theme
Plug 'sainnhe/gruvbox-material'

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
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'lukas-reineke/indent-blankline.nvim'

" comment
Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" icons
Plug 'kyazdani42/nvim-web-devicons'

"start up screen
Plug 'mhinz/vim-startify'

" tabs
"Plug 'romgrk/barbar.nvim'

" syntax highlighting for javascript
" Plug 'pangloss/vim-javascript'
" Plug 'MaxMEllon/vim-jsx-pretty'

" syntax highlighting for typescript
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" theme
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_bold = 1
" let g:airline_theme = 'gruvbox_material'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

colorscheme gruvbox-material
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
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

" highlight CocErrorHighlight ctermfg=Red guifg=#ff0000
" highlight CocWarningHighlight ctermfg=Brown guifg=#ff922b
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" fzf
let g:fzf_buffers_jump = 1
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" vim startify
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]

lua << EOF
function _G.webDevIcons(path)
  local filename = vim.fn.fnamemodify(path, ':t')
  local extension = vim.fn.fnamemodify(path, ':e')
  return require'nvim-web-devicons'.get_icon(filename, extension, { default = true })
end
EOF

function! StartifyEntryFormat() abort
  return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
endfunction
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" vim-gitgutter
let g:gitgutter_highlight_linenrs = 1
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --fixed-strings --no-heading --color=always --smart-case --glob "!{.git,node_modules}/*" '.shellescape(<q-args>),
  \   1,
  \   fzf#vim#with_preview({'options': ['--delimiter=--nth 4..', '--exact']}),
  \   <bang>0)
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  context_commentstring = {
    enable = true,
  }
}
EOF
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
" indent-blankline 
let g:indent_blankline_char = '│'
let g:indent_blankline_filetype_exclude = ['help', 'terminal']
" let g:indent_blankline_show_trailing_blankline_indent = v:false
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 

