-- General options that mimic modern IDEs (e.g., IntelliJ)
local opt = vim.opt

-- Line numbers: Absolute numbers (like IntelliJ)
opt.number = true
opt.relativenumber = false

-- Editor feedback and visuals
opt.cursorline = true      -- Highlight the line where the cursor is currently placed
opt.signcolumn = "yes"     -- Keep sign column open to prevent text jumping

-- Mouse support: full mouse support (clicking, scrolling, splits)
opt.mouse = "a"

-- Clipboard: use the system clipboard for copy/paste operations (cmd+c/cmd+v integration)
opt.clipboard = "unnamedplus"

-- Search options
opt.ignorecase = true      -- Case-insensitive search
opt.smartcase = true       -- ...unless query contains uppercase letters

-- Indentation: 4 spaces
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Persistent undo: save undo history to disk so it survives restarts
opt.undofile = true

-- Auto-write: automatically save files when switching buffers or leaving the window
opt.autowrite = true

-- Speed up updates (faster feedback for diagnostics)
opt.updatetime = 250

-- Timeout for mapped sequences (which-key popup delay)
opt.timeout = true
opt.timeoutlen = 300

-- Enable mouse move events for winbar/dropbar hover support
opt.mousemoveevent = true


-- Disable default right-click popup menu to let nvzone/menu handle it
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("silent! aunmenu PopUp")
  end,
})

-- Add .NET Core SDK tools to PATH (needed for easy-dotnet tool dependencies)
vim.env.PATH = vim.env.PATH .. ":/Users/ianlintner/.dotnet/tools"

-- Add Mason bin directory to PATH so Neovim can find installed LSPs natively
vim.env.PATH = "/Users/ianlintner/.local/share/nvim/mason/bin:" .. vim.env.PATH




