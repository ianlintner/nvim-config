return {
  "python-mode/python-mode",
  ft = "python",
  branch = "develop",
  init = function()
    vim.g.pymode_python = "python3"
    vim.g.pymode_rope = 1
  end,
}
