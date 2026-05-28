# Neovim Configuration (`nvim-config`)

My personal Neovim configuration, optimized for C# (Godot), TypeScript, Python, and Rust development with a modern SWE workflow.

## Highlights
- **Plugin Manager:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Colorscheme:** [cyberpunk.nvim](https://github.com/samueljoli/cyberpunk.nvim)
- **File Explorer:** [NERDTree](https://github.com/preservim/nerdtree)
- **Completion:** [blink.cmp](https://github.com/Saghen/blink.cmp) + [Copilot](https://github.com/zbirenbaum/copilot.lua)
- **LSP:** [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [mason.nvim](https://github.com/williamboman/mason.nvim)
- **Syntax:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Search & Replace:** [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- **Godot Integration:** [godot.nvim](https://github.com/Lommix/godot.nvim) + [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- **C# / Dotnet:** [easy-dotnet.nvim](https://github.com/GustavEikaas/easy-dotnet.nvim)
- **AI Assistant:** [opencode.nvim](https://github.com/nickjvandyke/opencode.nvim)

## Keymaps
| Key | Action |
|-----|--------|
| `<C-n>` | Toggle NERDTree |
| `<leader>n` | Focus NERDTree |
| `<leader>sr` | Toggle Spectre Search & Replace |
| `<leader>sw` | Search current word project-wide |
| `<leader>sp` | Search current file project-wide |
| `<leader>ao` | Ask opencode |
| `gd` | Go to definition |
| `gr` | Go to references |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |

## Requirements
- Neovim >= 0.9
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (recommended for icons)

## Installation & Setup
To install this configuration on a new machine:

1. Clone the repository to your Neovim configuration directory:
   ```bash
   git clone https://github.com/ianlintner/nvim-config.git ~/.config/nvim
   ```
2. Start Neovim (`nvim`). `lazy.nvim` will automatically bootstrap itself and install all required plugins.
3. Run `:checkhealth` to verify everything is installed correctly.
