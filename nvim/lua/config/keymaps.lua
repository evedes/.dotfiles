-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Tmux Navigator
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<Return>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<Return>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<Return>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<Return>", opts)
