return {
  "preservim/nerdtree",
  keys = {
    { "<C-n>", "<cmd>NERDTreeToggle<cr>", desc = "Toggle NERDTree" },
    { "<leader>n", "<cmd>NERDTreeFocus<cr>", desc = "Focus NERDTree" },
  },
  cmd = {
    "NERDTree",
    "NERDTreeToggle",
    "NERDTreeFocus",
    "NERDTreeFind",
    "NERDTreeClose",
  },
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 or vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
          vim.cmd("NERDTree")
        end
      end,
    })
  end,
  config = function()
    vim.g.NERDTreeShowHidden = 1
  end,
}
