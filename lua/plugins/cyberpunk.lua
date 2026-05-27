return {
  {
    "samueljoli/cyberpunk.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberpunk").setup()
    end,
  },
}
