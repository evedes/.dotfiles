return {
  "rebelot/kanagawa.nvim",
  enabled = true,
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      compile = true,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {
            ui = { bg_gutter = "none" }
          }
        },
      },
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus"
      },
    })
    vim.cmd("colorscheme kanagawa")
    build = function()
      vim.cmd("KanagawaCompile")
    end
  end
}
