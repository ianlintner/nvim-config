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
  config = function(_, opts)
    local dap = require("dap")
    dap.adapters.godot = {
      type = "server",
      host = opts.dap.host,
      port = opts.dap.port,
    }
    dap.configurations.gdscript = {
      {
        type = "godot",
        request = "launch",
        name = "Launch scene",
        project = "${workspaceFolder}",
        launch_scene = true,
      },
    }
    require("godot").setup(opts)
  end,
}
