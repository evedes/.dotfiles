local opt = vim.opt

-- tabs & indentation

opt.tabstop = 2 							-- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 						-- 2 spaces for indent width
opt.expandtab = true					-- expand tab to spaces
opt.autoindent = true					-- copy indent from current line when starting new one

-- appearance

opt.number = true             -- shows absolute line number on cursor line (when relative number is on)
opt.relativenumber = true     -- show relative line numbers

-- behaviour

opt.hidden = true
opt.errorbells = false
opt.iskeyword:append("-")
opt.encoding = "UTF-8"
