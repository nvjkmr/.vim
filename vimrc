set backspace+=indent,eol,start      " allow backspacing over everything in insert mode

"" Must haves

set encoding=utf-8

set clipboard=unnamed      " Use system clipboard

set wrap                   " don't wrap lines

set autoindent             " always set autoindenting on

set copyindent             " copy the previous indentation on autoindenting

set history=1000           " remember more commands and search history

set undolevels=1000        " use many muchos levels of undo

set wildignore=*.swp,*.bak,*.pyc,*.class

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

set wildignore+=*/vendor/**

set wildignore+=*/node_modules/**

set visualbell           " don't beep

set noerrorbells         " don't beep

set noswapfile

cmap w!! w !sudo tee % >/dev/null      " forgot to sudo before editing a file that requires root privileges


"" Colors

colorscheme badwolf        " awesome colorscheme

syntax enable              " enable syntax highlighting


"" Spaces and Tabs

set tabstop=4              " visualization of spaces in a tab

set softtabstop=3          " number of spaces in tab when editing

set expandtab              " tabs are interpreted as spaces

set shiftwidth=4           " number of spaces to use for autoindenting

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

nmap <silent> ,/ :nohlsearch<CR>    " remove hightlight after search

"" Folding

set foldenable             " enable folding

set foldlevelstart=10      " all folds closed if set 0 & all open if 99

set foldnestmax=10         " maximum number of nested folds allowed

set foldmethod=indent      " syntax based folds

" za opens/closes the fold around the current block,
" replacing it with space.
nnoremap <space> za

"" Movement

" move vertically by the visual line without skipping
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" visually selects block of characters last inserted
nnoremap gV `[v`]

"" Leader shortcuts

let mapleader=","          " leader string is coma

"" File explorer
let g:netrw_liststyle=3


"" Window remapping

map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>


"" Python specific customizations

au BufNewFile,BufRead *.py
    \ set tabstop=4  |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
    \ set textwidth=79  |
    \ set expandtab  |
    \ set autoindent |
    \ set fileformat=unix


"" HTML, CSS and JS specific customizations

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2  |
    \ set softtabstop=2 |
    \ set shiftwidth=2
