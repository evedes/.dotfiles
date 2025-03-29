return {
  'echasnovski/mini.nvim',
  enabled = true,
  version = false,
  config = function()
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
        { mode = 'n', keys = '<Leader>b', desc = 'Buffer' },
        { mode = 'n', keys = '<Leader>f', desc = 'Picker' },
        { mode = 'n', keys = '<Leader>g', desc = 'Git' },
        { mode = 'n', keys = '<Leader>i', desc = 'Image' },
        { mode = 'n', keys = '<Leader>o', desc = 'Obsidian' },
      },
    })
  end
}
