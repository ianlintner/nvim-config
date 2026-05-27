# Neovim Configuration (`nvim-config`)

My personal Neovim configuration, optimized for C# (Godot), TypeScript, and Python development.

## Highlights
- **Plugin Manager:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **File Explorer:** [NERDTree](https://github.com/preservim/nerdtree)
- **Search & Replace:** [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- **Godot Integration:** [godot.nvim](https://github.com/Lommix/godot.nvim)
- **C# / Dotnet:** [easy-dotnet.nvim](https://github.com/GustavEikaas/easy-dotnet.nvim)

## Keymaps
- `<C-n>`: Toggle NERDTree
- `<leader>n`: Focus NERDTree
- `<leader>sr`: Toggle Spectre Search & Replace
- `<leader>sw`: Search current word under cursor project-wide
- `<leader>sp`: Search current file project-wide

## Installation & Setup
To install this configuration on a new machine:

1. Clone the repository to your Neovim configuration directory:
   ```bash
   git clone https://github.com/ianlintner/nvim-config.git ~/.config/nvim
   ```
2. Start Neovim (`nvim`). `lazy.nvim` will automatically bootstrap itself and install all required plugins.
