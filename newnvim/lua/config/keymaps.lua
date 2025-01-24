local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", opts)
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Save file and quit
keymap.set("n", "<leader>w", ":update<Return>", opts)
keymap.set("n", "<leader>q", ":quit<Return>", opts)
keymap.set("n", "<leader>Q", ":qa<Return>", opts)

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><")
keymap.set("n", "<C-A-l>", "<C-w>>")
keymap.set("n", "<C-A-k>", "<C-w>+")
keymap.set("n", "<C-A-j>", "<C-w>-")

-- Git
keymap.set("n", "<leader>gg", ":Neogit<CR>", opts)
