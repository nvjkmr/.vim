" if hidden is not set, TextEdit might fail.
set hidden


" Better display for messages
set cmdheight=2


" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300


" don't give |ins-completion-menu| messages.
set shortmess+=c


" always show signcolumns
set signcolumn=yes


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)


" Jump errors
nmap <silent> <Leader>s <Plug>(coc-diagnostic-info)
nmap <silent> <Leader>j <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>k <Plug>(coc-diagnostic-next)


" Remap for rename current word
nmap <silent> <Leader>rn <Plug>(coc-rename)
nmap <silent> <Leader>a <Plug>(coc-codeaction)


"" Auto format and fix imports on save
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
