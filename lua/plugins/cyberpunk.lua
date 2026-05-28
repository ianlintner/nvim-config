return {
  {
    "samueljoli/cyberpunk.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberpunk").setup()
      vim.schedule(function()
        vim.cmd.colorscheme("cyberpunk")
      end)
    end,
  },
}
