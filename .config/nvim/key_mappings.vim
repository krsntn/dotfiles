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

" switch between buffers
nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>
nnoremap <silent> <leader>w :bd<CR>

" remove search highlight
nmap <silent> <ESC> :noh<CR>

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
nnoremap <silent> <leader>fp :GFiles<CR>
nnoremap <silent> <leader>fo :Files<CR>
nnoremap <leader>ff :Rg!<Space>
nnoremap <silent> <leader>fh :History: <CR>
nnoremap <silent> <leader>fb :Buffers<CR>

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
nnoremap <silent> <leader>e :CocCommand explorer --quit-on-open<CR>

" easy motion
nmap <leader>/ <Plug>(easymotion-bd-w)

