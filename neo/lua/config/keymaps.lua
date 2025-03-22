local opts = { noremap = true, silent = true }
local keymap = vim.keymap

local function with_desc(description)
  return vim.tbl_extend("force", opts, { desc = description })
end

keymap.set("i", "jk", "<Esc>", with_desc("Escape"))
keymap.set("n", "x", '"_x')

-- Save file and quit
keymap.set("n", "<leader>w", ":update<Return>", with_desc("Write"))
keymap.set("n", "<leader>q", ":quit<Return>", with_desc("Quit"))
keymap.set("n", "<leader>Q", ":qa<Return>", with_desc("Quit all"))

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><")
keymap.set("n", "<C-A-l>", "<C-w>>")
keymap.set("n", "<C-A-k>", "<C-w>+")
keymap.set("n", "<C-A-j>", "<C-w>-")

-- Git
keymap.set("n", "<leader>gg", ":Neogit<CR>", with_desc("NeoGit Status"))
keymap.set("n", "<leader>go", "<cmd>lua MiniDiff.toggle_overlay()<cr>" , with_desc("MiniDiff Toggle Overlay"))

-- Mini
keymap.set("n", "<leader>fe", "<cmd>lua MiniFiles.open()<cr>", with_desc("Explorer"))
keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>" , with_desc("Finder"))
keymap.set("n", "<leader>fg", "<cmd>Pick grep_live<cr>" , with_desc("Live Grep"))
keymap.set("n", "<leader>fb", "<cmd>Pick buffers<cr>" , with_desc("Buffers"))
keymap.set("n", "<leader>fh", "<cmd>Pick help<cr>" , with_desc("Help"))
