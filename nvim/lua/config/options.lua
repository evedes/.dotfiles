local opt = vim.opt

-- line numbers
opt.relativenumber = true     -- show relative line numbers
opt.number = true             -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation

opt.tabstop = 2 							-- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 						-- 2 spaces for indent width
opt.expandtab = true					-- expand tab to spaces
opt.autoindent = true					-- copy indent from current line when starting new one
