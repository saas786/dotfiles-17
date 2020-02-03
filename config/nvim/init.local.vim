" Colors
try
    colorscheme delek
    set background=dark
catch
endtry

" Status bar
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
set noshowmode

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" netrw
nmap <silent> <Leader>e 1gt:Explore<cr>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3

" Always start on line 1 of Git commit messages
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Launch Marked with file
nmap <silent> <Leader>m :MarkedOpen<cr>

" Keep fingers on home row
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Quicker CtrlPTag
nnoremap <Leader>. :CtrlPTag<cr>

" Tabularize
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Paste clipboard
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<CR>

" Replace with clipboard using ReplaceWithRegister plugin
nmap <Leader>gr "*gr"

" vim-rspec
let g:rspec_command = 'Dispatch rspec {spec}'
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

" vim-json
let g:vim_json_syntax_conceal = 0

" Quickly replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" shortcuts for 3-way merge
map <Leader>1 :diffget LOCAL<CR>
map <Leader>2 :diffget BASE<CR>
map <Leader>3 :diffget REMOTE<CR>
