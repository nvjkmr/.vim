set nocompatible
set inccommand=nosplit
set viminfo+=n~/.cache/vim/viminfo
set runtimepath+=~/.config/vim


"" Imports
source $HOME/.config/vim/src/plugins.vim    " load all plugins first
source $HOME/.config/vim/src/ag_rg_fzf.vim
source $HOME/.config/vim/src/airline.vim
source $HOME/.config/vim/src/autopairs.vim
source $HOME/.config/vim/src/devicons.vim
source $HOME/.config/vim/src/json.vim
source $HOME/.config/vim/src/nerdtree.vim
source $HOME/.config/vim/src/nvim_compe.vim
source $HOME/.config/vim/src/nvim_lsp.vim


"" Leader shortcuts
let mapleader=" "          " leader string is coma


"" Must haves
set autoread
set autowrite
set backspace=indent,eol,start
set updatetime=250
set encoding=UTF-8
set hidden                 " have unwritten changes to a file and open a new file
set wrap                   " don't wrap lines
set autoindent             " always set autoindenting on
set copyindent             " copy the previous indentation on autoindenting
set history=1000           " remember more commands and search history
set undolevels=1000        " use many muchos levels of undo
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set mouse=c
set wildignore=*.swp,*.bak,*/*.pyc,*/*.class,*/.cls
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**
set wildignore+=*/__pycache__/*
if !has('nvim')
    set balloondelay=2500     " Balloon Config
    set termguicolors
endif


"" Colors
set background=dark
colorscheme space-vim-dark   " awesome colorscheme
syntax enable                " enable syntax highlighting


"" Spaces and Tabs
set tabstop=4              " visualization of spaces in a tab
set softtabstop=3          " number of spaces in tab when editing
set shiftwidth=4           " number of spaces to use for autoindenting
set expandtab              " tabs are interpreted as spaces
set shiftround             " use multiple of shiftwidth when indenting with '<' and '>'


"" UI config
set number                 " display line numbers
set cursorline             " highlight current line
set wildmenu               " visual autocomplete for command menu
set lazyredraw             " redraw only when needed
set showmatch              " shows the matching brackets [{()}]
set ruler                  " shows column & line number & cursor position


"" Searching
set incsearch              " search as characters are entered
set hlsearch               " highlight search terms
set ignorecase             " ignore case when searching
set smartcase              " ignore case if search pattern is all lowercase, case-sensitive otherwise
nmap <silent> <Leader>/ :nohlsearch<CR>
vnoremap // y/<C-R>"<CR>   " search for visually select text using '//'


"" Folding
" za opens/closes the fold around the current block.
" There are different methods to fold a document
" kindly find it on help (:help foldmethod).
set nofoldenable             " enable folding
set foldmethod=indent
set foldnestmax=10
set foldlevel=1


"" File specific configurations
filetype plugin indent on         " load filetype-specific indent files


"" Cursor Movement Shortcuts
nnoremap j gj
nnoremap k gk
nnoremap <S-b> ^
nnoremap <S-e> $
tnoremap <Esc> <C-\><C-n>


"" File explorer
let g:netrw_liststyle=3


"" Window remapping
map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>


"" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>ez :e ~/.zshrc<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


"" Changing cursor shape on insert mode
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
endif


"" Open terminal in horizontal split
nnoremap <silent> <leader>t :call OpenTerminal()<CR>
function! OpenTerminal()
  silent execute 'botright 12 split' | exe 'terminal'
endfunction
if has("autocmd")
  autocmd TermOpen * :startinsert
endif


if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
