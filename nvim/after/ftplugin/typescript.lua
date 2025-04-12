local set = vim.opt_local

-- Match Prettier default settings
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.textwidth = 80 -- Prettier typically uses 80 as default
set.smartindent = true

-- Additional TypeScript settings
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
