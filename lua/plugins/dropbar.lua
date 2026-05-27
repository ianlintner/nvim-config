return {
  {
    "Bekaboo/dropbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    config = function()
      local dropbar_api = require("dropbar.api")
      
      -- Keyboard shortcut to trigger dropbar selection
      vim.keymap.set('n', '<leader>d', dropbar_api.pick, { desc = 'Pick symbols in dropbar' })
    end,
  },
}
