return {
  'echasnovski/mini.nvim',
  enabled = true,
  version = false,
  config = function()
    require('mini.basics').setup()
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
    require('mini.statusline').setup({
      use_icons = true,
      content = {
        active = function()
          local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
          local git           = MiniStatusline.section_git({ trunc_width = 75 })
          local diagnostics   = MiniStatusline.section_diagnostics({ trunc_width = 75 })
          local filename      = MiniStatusline.section_filename({ trunc_width = 140 })
          local fileinfo      = MiniStatusline.section_fileinfo({ trunc_width = 120 })
          local location      = MiniStatusline.section_location({ trunc_width = 75 })
          local recording     = vim.fn.reg_recording() ~= "" and "Recording @" .. vim.fn.reg_recording() or ""

          return MiniStatusline.combine_groups({
            { hl = mode_hl,                 strings = { mode } },
            { hl = 'MiniStatuslineDevinfo', strings = { git, diagnostics } },
            '%<',                                                       -- Mark general truncate point
            { hl = 'MiniStatuslineFilename', strings = { filename } },
            '%=',                                                       -- End left alignment
            { hl = 'WarningMsg',             strings = { recording } }, -- Show recording status
            { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
            { hl = mode_hl,                  strings = { location } },
          })
        end,
      },
    })
    local miniclue = require('mini.clue')
    miniclue.setup({
      triggers = {
        { mode = 'n', keys = '<Leader>' },
        { mode = 'x', keys = '<Leader>' },
        { mode = 'n', keys = '<LocalLeader>' },
        { mode = 'x', keys = '<LocalLeader>' },
      },
      clues = {
        miniclue.gen_clues.builtin_completion(),
        miniclue.gen_clues.g(),
        miniclue.gen_clues.marks(),
        miniclue.gen_clues.registers(),
        miniclue.gen_clues.windows(),
        miniclue.gen_clues.z(),
        { mode = 'n', keys = '<Leader>a',      desc = 'Avante' },
        { mode = 'n', keys = '<Leader>b',      desc = 'Buffer' },
        { mode = 'n', keys = '<Leader>f',      desc = 'Picker' },
        { mode = 'n', keys = '<Leader>g',      desc = 'Git' },
        { mode = 'n', keys = '<Leader>i',      desc = 'Image' },
        { mode = 'n', keys = '<Leader>o',      desc = 'Obsidian' },
        { mode = 'n', keys = '<Leader>u',      desc = 'Utils' },
        { mode = 'n', keys = '<LocalLeader>e', desc = 'Conjure' },
      },
    })
  end
}
