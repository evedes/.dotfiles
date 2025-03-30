return {
  "echasnovski/mini.nvim",
  enabled = true,
  version = false,
  config = function()
    require("mini.git").setup()
    require("mini.diff").setup()
  end,
}
