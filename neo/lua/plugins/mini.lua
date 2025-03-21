local config = function()
  require('mini.comment').setup()
  require('mini.move').setup()
  require('mini.bufremove').setup()
  require('mini.pairs').setup()
  require('mini.basics').setup()
  require('mini.statusline').setup { use_icons = true }
  require('mini.files').setup()
  require('mini.pick').setup()
  require('mini.icons').setup()
  require('mini.diff').setup()
  require('mini.notify').setup()
  require('mini.cursorword').setup()


  local miniclue = require('mini.clue')

  miniclue.setup({
    triggers = {
      { mode = 'n', keys = '<>' },
      { mode = 'x', keys = '<>' },
    },
    clues = {
      miniclue.gen_clues.builtin_completion(),
      miniclue.gen_clues.g(),
      miniclue.gen_clues.marks(),
      miniclue.gen_clues.registers(),
      miniclue.gen_clues.windows(),
      miniclue.gen_clues.z(),
      { mode = 'n', keys = '<>a', desc = 'Avante' },
      { mode = 'n', keys = '<>b', desc = 'Buffer' },
      { mode = 'n', keys = '<>f', desc = 'Picker' },
      { mode = 'n', keys = '<>g', desc = 'Git' },
    },
  })

  local hipatterns = require('mini.hipatterns')
  hipatterns.setup({
    highlighters = {
      -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
      fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
      hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
      todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
      note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
      hex_color = hipatterns.gen_highlighter.hex_color(),
    },
  })
end


return {
  'echasnovski/mini.nvim',
  version = '*',
  config = config
}
