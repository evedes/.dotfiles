local config = function()
  -- Default options:
  require("kanagawa").setup({
    compile = false,  -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,    -- do not set background color
    dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    colors = {             -- add/modify theme and palette colors
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors)
      return {
        LineNr = { bg = "#1a1a22" },
      }
    end,
    theme = "dragon",
    background = {
      dark = "dragon", -- wave, dragon
      light = "lotus",
    },
  })

  -- setup must be called before loading
  vim.cmd("colorscheme kanagawa")
end

return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = config,
}
