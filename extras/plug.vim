call plug#begin('~/.config/vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'ryanoasis/vim-devicons'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'dir': '~/apps/fzf', 'do': './install --xdg --all' }
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

Plug 'voldikss/vim-floaterm'

Plug 'direnv/direnv.vim'

Plug 'uber/prototool', { 'rtp':'vim/prototool' }

call plug#end()
