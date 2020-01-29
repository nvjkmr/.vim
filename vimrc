set nocompatible


"" Imports

source $HOME/.vim/extras/plug.vim
source $HOME/.vim/extras/coc.vim


"" Leader shortcuts

let mapleader=" "          " leader string is coma


"" Quickly edit/reload the vimrc file

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>ez :e ~/.zshrc<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


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

if !has('nvim')
    set ttymouse=xterm2
    " Balloon Config
    set balloondelay=2500
endif

set wildignore=*.swp,*.bak,*/*.pyc,*/*.class,*/.cls
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**
set wildignore+=*/__pycache__/*


"" Colors

if (has("termguicolors"))
  set termguicolors
endif

set background=dark

colorscheme space-vim-dark        " awesome colorscheme

syntax enable              " enable syntax highlighting


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

set nofoldenable             " enable folding

set foldmethod=indent

set foldnestmax=10

set foldlevel=1

" za opens/closes the fold around the current block.
" There are different methods to fold a document
" kindly find it on help (:help foldmethod).


"" File specific configurations

filetype plugin indent on         " load filetype-specific indent files


"" Cursor Movement Shortcuts

nnoremap j gj
nnoremap k gk
nnoremap <S-b> ^
nnoremap <S-e> $
tnoremap <Esc> <C-\><C-n>

" move up and down in autocomplete list
" inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
" inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


"" File explorer

let g:netrw_liststyle=3


"" Window remapping

map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>


"" Changing cursor shape on insert mode

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
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


"" NERDTree

map <C-n> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.pyc$']

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


"" JSON format
if !exists(":FormatJSON")
    command FormatJSON execute '%!jq .'
endif


"" fzf

nnoremap <C-p> :FZF<CR>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>


"" json syntax highlight

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \ }

set rtp+=~/.apps/fzf/bin/fzf


"" Rg and Fzf

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


"" auto-pairs

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutFastWrap = '<A-e>'


"" Airline

let g:airline_extensions = ['branch', 'hunks', 'tabline', 'virtualenv']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_x = ''
let g:airline_section_y = ''


"" Vim Go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_list_type = "quickfix"
let g:go_def_mapping_enabled = 0
