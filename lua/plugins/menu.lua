return {
  {
    "nvzone/volt",
    lazy = true,
  },
  {
    "nvzone/menu",
    dependencies = { "nvzone/volt" },
    lazy = true,
    keys = {
      {
        "<RightMouse>",
        function()
          vim.cmd.exec '"normal! \\<RightMouse>"'
          local options = vim.bo.ft == "neo-tree" and "neo-tree" or "default"
          require("menu").open(options, { mouse = true })
        end,
        mode = { "n", "v", "i" },
        desc = "Open context menu",
      },
      {
        "<leader>m",
        function()
          local options = vim.bo.ft == "neo-tree" and "neo-tree" or "default"
          require("menu").open(options)
        end,
        mode = { "n", "v" },
        desc = "Open context menu",
      },
    },
  },
}
