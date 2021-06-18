
let mapleader = " "

" normal mode
nnoremap j gj
nnoremap k gk
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" split screen
nnoremap <silent> <C-\> :vsp<CR>
""nnoremap <silent> <C-\> :sp<CR>
nnoremap <silent> <leader>d :clo<CR>

" remove search highlight
nnoremap <C-_> :noh<CR>

" visual mode
vnoremap p "_dP

" Fzf
nmap <silent> <C-p> :GFiles<CR>
nnoremap <C-f> :Rg!<Space>
nnoremap <silent> <C-:> :History: <CR>

" Vim Fugitive
nnoremap <leader>gs :G<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gk :diffget //3<CR>

" coc
inoremap <expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
nmap <leader>. <Plug>(coc-codeaction-cursor)

" nnoremap <silent> K :call CocAction('doHover')<CR>
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" coc-explorer
nnoremap <leader>e :CocCommand explorer<CR>

" Easy Motion
nmap <leader>/ <Plug>(easymotion-bd-w)

" Camel Case Motion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge

