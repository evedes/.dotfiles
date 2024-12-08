local config = function()
  require("kanagawa").setup({
    compile = false,
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
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors)
      return {
        LineNr = { bg = "#1a1a22" },
      }
    end,
    theme = "wave",
    background = {
      dark = "wave", -- wave, dragon
      light = "lotus",
    },
  })
  vim.cmd("colorscheme kanagawa")
end

return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = config,
}
