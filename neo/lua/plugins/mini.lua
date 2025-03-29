return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.comment').setup()
    require('mini.move').setup()
    require('mini.bufremove').setup()
    require('mini.pairs').setup()
    require('mini.basics').setup()
    require('mini.icons').setup()
    require('mini.git').setup()
    require('mini.diff').setup()
    require('mini.notify').setup()
    require('mini.cursorword').setup()

    local hipatterns = require('mini.hipatterns')
    hipatterns.setup({
      highlighters = {
        -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
        fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
        hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
        todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
        note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    })
  end

}
