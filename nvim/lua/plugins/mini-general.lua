return {
  'echasnovski/mini.nvim',
  enabled = true,
  version = false,
  config = function()
    require('mini.basics').setup()

    -- Selection and Movements
    require('mini.move').setup()
    require('mini.pairs').setup()

    -- Buffers
    require('mini.bufremove').setup()

    -- Comments
    require('mini.comment').setup()

    -- Files and Pickers
    require('mini.files').setup()
    require('mini.pick').setup()

    -- Git
    require('mini.git').setup()
    require('mini.diff').setup()

    -- Appearance
    require('mini.icons').setup()
    require('mini.cursorword').setup()
    require('mini.notify').setup()

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
