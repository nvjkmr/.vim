call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'

Plug 'chrisbra/csv.vim'

Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'} " On-demand loading

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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

call plug#end()
