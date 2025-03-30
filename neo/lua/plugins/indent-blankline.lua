return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufRead", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = { char = "┊" },
  },
  config = function(_, opts)
    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#38384A" })
    end)
    require("ibl").setup(opts)
  end,
}
