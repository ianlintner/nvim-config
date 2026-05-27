return {
  "prettier/vim-prettier",
  build = "npm install --legacy-peer-deps",
  keys = {
    { "<leader>p", "<Plug>(Prettier)", desc = "Prettier" },
  },
  config = function()
    vim.g["prettier#autoformat"] = 1
    vim.g["prettier#autoformat_require_pragma"] = 0
  end,
}
