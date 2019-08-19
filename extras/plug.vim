call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'} " On-demand loading

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

Plug '/usr/local/opt/fzf'  " fzf installation path - change if required
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-commentary'

Plug 'tommcdo/vim-fubitive'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-surround'

Plug 'christoomey/vim-system-copy'

Plug 'google/vim-searchindex'

Plug 'kshenoy/vim-signature'

Plug 'vim-airline/vim-airline'

Plug 'xolox/vim-misc'

Plug 'godlygeek/tabular'

Plug 'mhinz/vim-startify'

Plug 'mileszs/ack.vim'

Plug 'terryma/vim-multiple-cursors'

call plug#end()
