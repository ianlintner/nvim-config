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
  config = function()
    -- You can add custom NERDTree configurations here if desired.
    -- E.g., showing hidden files:
    -- vim.g.NERDTreeShowHidden = 1
  end,
}
