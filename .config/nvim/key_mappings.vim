
let mapleader = " "

" cursor navigation
nnoremap j gj
nnoremap k gk

" pane navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" split screen
nnoremap <silent> <leader>\ :vsp<CR>
nnoremap <silent> <leader>- :sp<CR>
nnoremap <silent> <leader>q :clo<CR>

" remove search highlight
nnoremap <C-_> :noh<CR>

" paste text without overwriting register 
vnoremap p "_dP

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

" Fzf
nmap <silent> <C-p> :GFiles<CR>
nnoremap <C-f> :Rg!<Space>
nnoremap <silent> <C-i> :History: <CR>

" Vim Fugitive
nnoremap <leader>gs :G<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gk :diffget //3<CR>

" coc
inoremap <expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"
nmap <leader>. <Plug>(coc-codeaction-cursor)

" nnoremap <silent> K :call CocAction('doHover')<CR>
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" coc-eplorer
nnoremap <leader>e :CocCommand explorer<CR>

" Easy Motion
nmap <leader>/ <Plug>(easymotion-bd-w)

" Camel Case Motion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
