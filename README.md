# ~/.vim

Vim configuration tweaked for personal comfort. Before you start installing, make sure you backup your existing `.vim` directory (if any).

### Installation

#### Clone the repository and setup environment:
```
git clone https://github.com/nvkmr/.vim.git ~/
ln ~/.vim/config/nvim/* ~/.config/nvim/

go get golang.org/x/tools/gopls@latest  # go language server protocol

export GOPATH="${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
```

#### Install some additional tools:

1. [fzf docs](https://github.com/junegunn/fzf#installation) - Install and change install path in `extras/plug.vim` & runtime path in `vimrc` (if required).
2. [ripgrep docs](https://github.com/BurntSushi/ripgrep#installation) - Install ripgrep for the `:Rg` command.
3. [gopls wiki](https://github.com/golang/go/wiki/gopls#installation) - Install LSP server & [integrate with LSP client](https://github.com/golang/go/wiki/gopls#integration-with-your-text-editor) (Neovim LSP in our case).
4. [Neovim LSP configuration](https://github.com/neovim/nvim-lspconfig)
5. Finally check that `:checkhealth` is `OK`.

**NOTE**: Open your vim and run this command `:PlugInstall` to install all the plugins (in `~/.vim/plugged/` directory).

### Plugins
Currently, these are the list of plugins I'm using:
* auto-pairs
* direnv.vim
* fzf.vim
* nerdtree
* nvim-compe
* nvim-lspconfig
* prototool
* tabular
* vim-abolish
* vim-airline
* vim-commentary
* vim-devicons
* vim-floaterm
* vim-fubitive
* vim-fugitive
* vim-gitgutter
* vim-misc
* vim-rails
* vim-repeat
* vim-searchindex
* vim-signature
* vim-startify
* vim-surround
* vim-system-copy
