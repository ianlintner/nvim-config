return {
  "vim-autoformat/vim-autoformat",
  keys = {
    { "<F3>", ":Autoformat<CR>", desc = "Autoformat" },
  },
  init = function()
    vim.g.autoformat_autoindent = 0
    vim.g.autoformat_retab = 0
    vim.g.autoformat_remove_trailing_spaces = 0
  end,
}
