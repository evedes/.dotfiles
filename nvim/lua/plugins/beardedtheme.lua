return {
  "evedes/beardedtheme.nvim",
  priority = 1000,
  config = function()
    require("beardedtheme").setup({
      transparent = true,
      term_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = { bold = false },
        variables = {},
        strings = {},
      },
    })
    vim.cmd("colorscheme beardedtheme_aquarelle_lilac")
  end,
}
