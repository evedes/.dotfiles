-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Tmux Navigator

keymap.set("n", "<C-h>", ":TmuxNavigateLeft<Return>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<Return>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<Return>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<Return>", opts)

-- Split window
--
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
