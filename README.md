# NvChad Custom Configuration

## Overview

This repo uses NvChad as a base plugin. The main configuration files are:
- `init.lua` - Main entry point
- `lua/plugins/init.lua` - Plugin specifications
- `lua/configs/` - Individual plugin configurations
- `lua/mappings.lua` - Custom keybindings
- `lua/options.lua` - Neovim options
- `lua/autocmds.lua` - Autocommands
- `lua/chadrc.lua` - NvChad theme and UI settings

## Installed Plugins

### UI & Navigation
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** - Tab bar showing open files
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Enhanced status line with git info, diagnostics, mode
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File tree explorer (auto-opens on startup)
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Keybinding help popup

### Code Navigation & LSP
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
- **[glance.nvim](https://github.com/dnlhc/glance.nvim)** - Peek at definitions, references, implementations
- **[trouble.nvim](https://github.com/folke/trouble.nvim)** - Diagnostics and quickfix list viewer
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git change indicators
- **[lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)** - Function signature hints
- **[nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)** - Code action indicators

### Completion & Snippets
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine

### Search & Telescope
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder

### Code Formatting
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** - Code formatter

### Documentation & Preview
- **[peek.nvim](https://github.com/toppair/peek.nvim)** - Markdown preview in floating window

### AI & Copilot
- **[copilot.vim](https://github.com/github/copilot.vim)** - GitHub Copilot code completion
- **[CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)** - Interactive chat with Copilot

### Utilities
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - Package manager for LSP servers, formatters, linters
- **[themery.nvim](https://github.com/zaldih/themery.nvim)** - Theme switcher
- **[fidget.nvim](https://github.com/j-hui/fidget.nvim)** - LSP progress notifications
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** - Terminal integration with multiple window modes

## Key Bindings

### General Navigation
| Key | Action |
|-----|--------|
| `;` | Enter command mode (`:`) |
| `jk` | Exit insert mode |
| `<C-o>` | Jump back in history |
| `<C-i>` | Jump forward in history |

### File & Buffer Management
| Key | Action |
|-----|--------|
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `<leader>bc` | Close current buffer |
| `<leader>bl` | Close all buffers to the left |
| `<leader>br` | Close all buffers to the right |
| `<leader>e` | Toggle file tree (Neo-tree) |
| `<C-n>` | Toggle file tree (Neo-tree) |

### LSP Navigation
| Key | Action |
|-----|--------|
| `gd` | Go to definition (Glance) |
| `gr` | Find references (Glance) |
| `gi` | Go to implementation (Glance) |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `K` | Show hover information |

### Search & Telescope
| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fw` | Grep word under cursor |

### Diagnostics & Issues
| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle diagnostics (Trouble) |
| `<leader>xX` | Toggle buffer diagnostics (Trouble) |
| `<leader>cs` | Symbols (Trouble) |
| `<leader>cl` | LSP definitions/references (Trouble) |
| `<leader>xL` | Location list (Trouble) |
| `<leader>xQ` | Quickfix list (Trouble) |

### Theme & UI
| Key | Action |
|-----|--------|
| `<leader>th` | Open theme switcher |
| `<leader>?` | Show buffer keymaps (which-key) |

### Markdown
| Key | Action |
|-----|--------|
| `<leader>mp` | Open markdown preview (Peek) |

### Terminal
| Key | Action |
|-----|--------|
| `<C-\>` | Toggle terminal |
| `<leader>tv` | Open terminal vertically |
| `<leader>th` | Open terminal horizontally |
| `<leader>tf` | Open terminal floating |
| `<leader>tt` | Toggle terminal |

### Copilot
| Key | Action |
|-----|--------|
| `<C-g>` | Accept Copilot suggestion (insert mode) |
| `<leader>ccx` | Toggle Copilot Chat |
| `<leader>cce` | Explain code (normal/visual) |
| `<leader>cct` | Generate tests (normal/visual) |
| `<leader>ccf` | Fix code (normal/visual) |
| `<leader>ccd` | Generate documentation (normal/visual) |

## Installation & Setup

### Prerequisites
- Neovim 0.11+
- Git
- Node.js & npm (for some plugins)
- Deno (for Markdown preview)

### Install Deno (for Markdown Preview)
```bash
irm https://deno.land/install.ps1 | iex
```

### First Time Setup
1. Clone this repo to `~/.config/nvim/` (or `$APPDATA/Local/nvim` on Windows)
2. Start Neovim - Lazy will automatically download and install all plugins
3. Run `:Copilot setup` to authenticate GitHub Copilot
4. Plugins will be ready to use!

## Theme
Default theme: **onedark** (can be changed with `<leader>th`)

Available themes:
- onedark
- tokyonight
- catppuccin
- monokai
- solarized

## Configuration Structure

- **init.lua** - Bootstrap Lazy plugin manager and load configurations
- **lua/plugins/init.lua** - Plugin specifications and configurations
- **lua/configs/** - Individual plugin config files
- **lua/mappings.lua** - Custom keybindings
- **lua/options.lua** - Neovim options (tabs, line numbers, etc.)
- **lua/autocmds.lua** - Autocommands (auto-open Neo-tree on startup)
- **lua/chadrc.lua** - NvChad theme and UI customization

## Notes

- NvChad base is imported as a plugin - this allows using NvChad's default configuration while customizing on top
- All plugins are lazy-loaded for faster startup
- On startup, Neo-tree automatically opens on the left and focus moves to the main buffer

# Credits

1. [NvChad](https://github.com/NvChad/NvChad) - Base Neovim configuration framework
2. [LazyVim](https://github.com/LazyVim/starter) - Inspired NvChad's starter setup

