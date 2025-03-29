return {
  'echasnovski/mini.statusline',
  enabled = true,
  version = false,
  config = function()
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

          -- Add recording status
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
  end
}
