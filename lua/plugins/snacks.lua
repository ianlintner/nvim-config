return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = { enabled = true },
      input = { enabled = true },
    },
    keys = {
      -- Command & Keymap Discovery Menus
      { "<leader>:", function() Snacks.picker.commands() end, desc = "Command Palette (TUI Menu)" },
      { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Search Keymaps (TUI Menu)" },
      
      -- Quick File / Text Search
      { "<leader>sf", function() Snacks.picker.files() end, desc = "Find Files" },
      { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep Search" },
      { "<leader>sb", function() Snacks.picker.buffers() end, desc = "Buffers List" },
    },
  },
}
