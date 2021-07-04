let mapleader = " "

" cursor navigation
nnoremap j gj
nnoremap k gk

" pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" split screen
nnoremap <silent> <leader>l :vsp<CR>
nnoremap <silent> <leader>j :sp<CR>
nnoremap <silent> <leader>q :clo<CR>

" resize pane
nnoremap <silent> <Leader><Right> :vertical resize +10<CR>
nnoremap <silent> <Leader><Left> :vertical resize -10<CR>
nnoremap <silent> <Leader><Up> :resize +5<CR>
nnoremap <silent> <Leader><Down> :resize -5<CR>

" remove search highlight
nnoremap <C-_> :noh<CR>

" paste text without overwriting register 
vnoremap p "_dP

" search for selected text, forwards or backwards.
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

" fzf
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-e> :Files<CR>
nnoremap <C-f> :Rg!<Space>
nnoremap <silent> <C-g> :History: <CR>

" vim fugitive
nnoremap <leader>gs :G<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gk :diffget //3<CR>

" coc
inoremap <expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"
nmap <leader>. <Plug>(coc-codeaction-cursor)

nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc-eplorer
nnoremap <leader>e :CocCommand explorer --quit-on-open<CR>

" easy motion
nmap <leader>/ <Plug>(easymotion-bd-w)
