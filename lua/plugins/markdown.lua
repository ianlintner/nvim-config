return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "quarto", "rmd" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      code = {
        sign = false,
        style = "language",
      },
      heading = {
        sign = false,
        icons = {},
      },
      checkbox = {
        enabled = true,
      },
      mermaid = {
        enabled = true,
      },
      pipe_table = {
        enabled = true,
      },
      bullet = {
        enabled = true,
      },
    },
  },
}
