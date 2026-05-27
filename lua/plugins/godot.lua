return {
  "Lommix/godot.nvim",
  lazy = true,
  cmd = { "GodotDebug", "GodotBreakAtCursor", "GodotStep", "GodotQuit", "GodotContinue" },
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-treesitter/nvim-treesitter",
    "neovim/nvim-lspconfig",
  },
  opts = {
    bin = "godot",
    dap = {
      host = "127.0.0.1",
      port = 6006,
    },
    gui = {
      console_config = {
        anchor = "SW",
        border = "double",
        col = 1,
        height = 10,
        relative = "editor",
        row = 99999,
        style = "minimal",
        width = 99999,
      },
    },
    expose_commands = true,
  },
}
