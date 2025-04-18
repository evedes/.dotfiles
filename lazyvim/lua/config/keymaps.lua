local opts = { noremap = true, silent = true }
local keymap = vim.keymap

local function with_desc(description)
  return vim.tbl_extend("force", opts, { desc = description })
end

keymap.set("i", "jk", "<Esc>", with_desc("Escape"))
keymap.set("n", "x", '"_x') -- Sends the deleted char to the black hole register

-- Utils
keymap.set("n", "<leader>ul", "<cmd>Lazy<cr>", with_desc("Lazy"))
keymap.set("n", "<leader>um", "<cmd>Mason<cr>", with_desc("Mason"))

-- Save file and quit
keymap.set("n", "<leader>w", "<cmd>w!<cr>", with_desc("Write"))
keymap.set("n", "<leader>q", "<cmd>wq!<cr>", with_desc("Quit (save)"))
keymap.set("n", "<leader>Q", "<cmd>wqa!<cr>", with_desc("Quit all (save all)"))

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><", with_desc("Resize left"))
keymap.set("n", "<C-A-l>", "<C-w>>", with_desc("Resize right"))
keymap.set("n", "<C-A-k>", "<C-w>+", with_desc("Resize up"))
keymap.set("n", "<C-A-j>", "<C-w>-", with_desc("Resize down"))
