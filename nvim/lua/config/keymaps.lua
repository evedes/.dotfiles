local opts = { noremap = true, silent = true }
local keymap = vim.keymap

local function with_desc(description)
  return vim.tbl_extend("force", opts, { desc = description })
end

keymap.set("i", "jk", "<Esc>", opts)
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Save file and quit
keymap.set("n", "<leader>w", ":update<Return>", with_desc("Save file"))
keymap.set("n", "<leader>q", ":quit<Return>", with_desc("Quit file"))
keymap.set("n", "<leader>Q", ":qa<Return>", with_desc("Quit all"))

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><")
keymap.set("n", "<C-A-l>", "<C-w>>")
keymap.set("n", "<C-A-k>", "<C-w>+")
keymap.set("n", "<C-A-j>", "<C-w>-")

-- Git
keymap.set("n", "<leader>gg", ":Neogit<CR>", opts)
