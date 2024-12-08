local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- Source
keymap.set("n", "<space><space>x", "<cmd>source %<CR>")

-- Escape combo
keymap.set("i", "jk", "<Esc>", opts)

-- Sends the content of x to the black hole register
-- This makes the `x` key delete characters without affecting your clipboard/registers
keymap.set("n", "x", '"_x')

-- Clears the search highlighting
-- Removes the search highlights after a search
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Save file and quit
keymap.set("n", "<leader>w", ":update<Return>", opts)
keymap.set("n", "<leader>q", ":quit<Return>", opts)
keymap.set("n", "<leader>Q", ":qa<Return>", opts)
