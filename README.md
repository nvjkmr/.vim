# Neovim Configuration

A modern Neovim configuration based on LazyVim, optimized for Ruby on Rails development. This configuration uses the Lazy package manager for plugin management and provides a powerful, IDE-like experience.

## Features

- Built on LazyVim framework
- Optimized for Ruby on Rails development
- AI assistance with Avante
- Efficient keybindings with which-key

## Requirements

Before installation, ensure you have:

1. [Neovim 0.8+](https://github.com/neovim/neovim/releases)
2. [Git](https://git-scm.com/)
3. [ripgrep](https://github.com/BurntSushi/ripgrep) - For fast file searching
4. A Nerd Font (recommended: [JetBrains Mono NF](https://www.nerdfonts.com/))
5. Ruby language server: `gem install ruby-lsp`
6. For debugging: `gem install debug`

## Installation

```bash
# Backup any existing configuration
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this configuration
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim

# Start Neovim - plugins will be automatically installed on first launch
```

## Ruby on Rails Features

This configuration includes special support for Ruby on Rails development:

- Full Ruby language support via Treesitter
- Ruby LSP integration for intelligent code completion and navigation
- Rails-specific navigation with vim-rails
- Integrated testing via vim-test
- Debugging support with DAP
- Custom AI prompts for Rails development tasks

### Key Bindings for Rails Development

| Action | Shortcut |
|:-------|:---------|
| Test nearest | `<leader>tn` |
| Test file | `<leader>tf` |
| Test suite | `<leader>ts` |
| Test last | `<leader>tl` |
| Visit test file | `<leader>tv` |
| Find Rails files | `<leader>fr` |
| Find Models | `<leader>fm` |
| Find Controllers | `<leader>fc` |
| Find Views | `<leader>fv` |

### Debugging

| Action | Shortcut |
|:-------|:---------|
| Toggle breakpoint | `<leader>db` |
| Continue | `<leader>dc` |
| Terminate | `<leader>dt` |
| Step over | `<leader>do` |
| Step into | `<leader>di` |
| Step out | `<leader>du` |

### AI Integration

Toggle AI assistant with `<leader>ai`

Custom Rails prompts:
- Explain Rails Code
- Generate Rails Model
- Generate Rails Controller
- Optimize Query
- Generate Migration

## LSP Features

| Action | Shortcut |
|:-------|:---------|
| Go to definition | `gd` |
| Go to declaration | `gD` |
| Go to Implementation | `gi` |
| Find References | `gr` |
| Rename symbol | `<leader>rn` |
| Code actions | `<leader>ca` |
| Hover documentation | `K` |
| Signature help | `<C-k>` |
| Previous error | `[d` |
| Next error | `]d` |
| Type Definition | `<leader>D` |

## Health Check

Run `:checkhealth` to verify that all components are working correctly.
