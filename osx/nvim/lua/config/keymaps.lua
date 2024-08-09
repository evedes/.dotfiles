local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')
keymap.set("i", "jk", "<Esc>", opts)
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Save file and quit
keymap.set("n", "<leader>w", ":update<Return>", opts)
keymap.set("n", "<leader>q", ":quit<Return>", opts)
keymap.set("n", "<leader>Q", ":qa<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", opts)
keymap.set("n", "<leader>ss", "<C-w>s", opts)

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><")
keymap.set("n", "<C-A-l>", "<C-w>>")
keymap.set("n", "<C-A-k>", "<C-w>+")
keymap.set("n", "<C-A-j>", "<C-w>-")

-- Git
vim.api.nvim_del_keymap("n", "<leader>gg")
keymap.set("n", "<leader>gg", ":Neogit<CR>", opts)
