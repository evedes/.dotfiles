local config = function()
  require('mini.basics').setup()
  require('mini.pairs').setup()
  require('mini.comment').setup()
  require('mini.statusline').setup { use_icons = true }
  require('mini.files').setup()
  require('mini.pick').setup()
  require('mini.icons').setup()
  require('mini.diff').setup()
  require('mini.move').setup()

  local miniclue = require('mini.clue')

  miniclue.setup({
    triggers = {
      { mode = 'n', keys = '<Leader>' },
      { mode = 'x', keys = '<Leader>' },
    },
    clues = {
      miniclue.gen_clues.builtin_completion(),
      miniclue.gen_clues.g(),
      miniclue.gen_clues.marks(),
      miniclue.gen_clues.registers(),
      miniclue.gen_clues.windows(),
      miniclue.gen_clues.z(),
      { mode = 'n', keys = '<Leader>a', desc = 'Avante' },
      { mode = 'n', keys = '<Leader>f', desc = 'Picker' },
      { mode = 'n', keys = '<Leader>g', desc = 'Git' },
    },
  })
end


return {
  'echasnovski/mini.nvim',
  version = '*',
  config = config
}

