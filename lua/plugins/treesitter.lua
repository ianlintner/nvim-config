return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "vimdoc",
        "c",
        "cpp",
        "c_sharp",
        "rust",
        "python",
        "go",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "bash",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "regex",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      pcall(function()
        require("nvim-treesitter.configs").setup(opts)
      end)
    end,
  },
}
