return {
  -- Completion engine (blink.cmp - modern, fast)
  {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    opts = {
      keymap = {
        preset = "super-tab",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          lsp = { min_keyword_length = 1, score_offset = 4 },
          path = { score_offset = 2 },
        },
      },
      completion = {
        documentation = { auto_show = true },
        menu = { draw = { treesitter = { "lsp" } } },
      },
    },
    keys = {
      {
        "<C-space>",
        function() require("blink.cmp").show() end,
        desc = "Show completions",
      },
    },
  },

  -- LSP support
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "saghen/blink.cmp" },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- Keymaps for LSP
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client:supports_method("textDocument/completion") then
            client.server_capabilities.completionProvider.triggerCharacters = nil
          end
          local map = vim.keymap.set
          local buf = args.buf
          map("n", "gd", vim.lsp.buf.definition, { buffer = buf, desc = "Go to definition" })
          map("n", "gr", vim.lsp.buf.references, { buffer = buf, desc = "Go to references" })
          map("n", "K", vim.lsp.buf.hover, { buffer = buf, desc = "Hover" })
          map("n", "<leader>rn", vim.lsp.buf.rename, { buffer = buf, desc = "Rename" })
          map("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf, desc = "Code action" })
        end,
      })

      -- LSP servers
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            },
          },
        },
        pyright = {},
        rust_analyzer = {},
        gopls = {},
        clangd = {},
      }

      for server, opts in pairs(servers) do
        opts.capabilities = capabilities
        if vim.lsp.config then
          vim.lsp.config(server, opts)
          vim.lsp.enable(server)
        else
          require("lspconfig")[server].setup(opts)
        end
      end
    end,
  },

  -- LSP installer
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUpdate" },
    build = ":MasonUpdate",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "gopls", "clangd" },
      automatic_installation = true,
    },
  },

  -- AI completion (pick ONE):
  --   Option A: GitHub Copilot (requires subscription)
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = true, auto_trigger = true },
      panel = { enabled = false },
    },
    enabled = true,
  },

  --   Option B: Codeium (free tier)
  {
    "Exafunction/codeium.nvim",
    cmd = "Codeium",
    event = "InsertEnter",
    opts = {},
    enabled = false, -- Set to true for Codeium
  },

}
