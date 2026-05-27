return {
  "nvim-pack/nvim-spectre",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>sr",
      function()
        require("spectre").toggle()
      end,
      desc = "Toggle Spectre (Search & Replace)",
    },
    {
      "<leader>sw",
      function()
        require("spectre").open_visual({ select_word = true })
      end,
      desc = "Search current word",
    },
    {
      "<leader>sp",
      function()
        require("spectre").open_file_search({ select_word = true })
      end,
      desc = "Search current file",
    },
  },
  cmd = { "Spectre" },
  opts = {
    -- Default configuration (can be left empty for defaults)
  },
}
