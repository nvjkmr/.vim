"" NERDTree


map <C-n> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
let g:NERDTreeWinSize=40
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
