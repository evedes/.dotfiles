-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- behavior

local opt = vim.opt

opt.hidden = true
opt.errorbells = false
opt.iskeyword:append("-")
opt.encoding = "UTF-8"
