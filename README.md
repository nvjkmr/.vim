# ~/.vim

Vim configuration tweaked for personal comfort. Before you start installing, make sure you backup your existing `.vim` directory (if any).

### Installation
```
git clone https://github.com/nvkmr/.vim.git ~/
pip install 'python-language-server[yapf]'
pip install pylint
```

### Setup
Open your vim and run this command `:PlugInstall` to install all the plugins.
Please go through [fzf docs](https://github.com/junegunn/fzf#installation) for installation and setup of FZF.

**NOTE**: Installs all the plugins in `~/.vim/plugged/` folder.

### Plugins
Currently, these are the list of plugins I'm using:
* ALE
* auto-pairs
* fzf.vim
* nerdtree
* tabular
* vim-airline
* vim-commentary
* vim-fubitive
* vim-fugitive
* vim-gitgutter
* vim-misc
* vim-notes
* vim-repeat
* vim-searchindex
* vim-signature
* vim-surround
* vim-system-copy

P.S.: I code in Python, hence configured mostly for it.
