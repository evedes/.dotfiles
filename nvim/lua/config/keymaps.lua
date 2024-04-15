local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Exit insert mode
keymap.set("i", "jk", "<Esc>", opts)

--
keymap.set("n", "x", '"_x"')

-- Clear Search Highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

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
keymap.set("n", "<leader>sh", "<C-w>s", opts)
keymap.set("n", "<leader>se", "<C-w>=", opts)
keymap.set("n", "<leader>sx", "<cmd>close<CR>", opts)

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", opts)
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", opts)
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", opts)
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", opts)
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", opts)

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><")
keymap.set("n", "<C-A-l>", "<C-w>>")
keymap.set("n", "<C-A-k>", "<C-w>+")
keymap.set("n", "<C-A-j>", "<C-w>-")
