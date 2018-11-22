call plug#begin('~/.vim/plugged')


" On-demand loading
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug '/usr/local/opt/fzf'
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

Plug 'w0rp/ale'

call plug#end()
