return {
  'echasnovski/mini.nvim',
  enabled = true,
  version = false,
  config = function()
    require('mini.files').setup()
    require('mini.pick').setup()
  end
}
