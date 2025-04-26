local opts = { noremap = true, silent = true }
local keymap = vim.keymap

local function with_desc(description)
  return vim.tbl_extend("force", opts, { desc = description })
end

keymap.set("i", "jk", "<Esc>", with_desc("Escape"))
keymap.set("n", "x", '"_x') -- Sends the deleted char to the black hole register

-- Write
keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Write" })

-- Quit
keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "Quit all" })

-- Indtend while remaining in visual mode.
keymap.set("v", "<", "<gv", with_desc("Shift left"))
keymap.set("v", ">", ">gv", with_desc("Shift right"))

-- Utils
keymap.set("n", "<leader>ul", "<cmd>Lazy<cr>", with_desc("Lazy"))
keymap.set("n", "<leader>um", "<cmd>Mason<cr>", with_desc("Mason"))

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><", with_desc("Resize left"))
keymap.set("n", "<C-A-l>", "<C-w>>", with_desc("Resize right"))
keymap.set("n", "<C-A-k>", "<C-w>+", with_desc("Resize up"))
keymap.set("n", "<C-A-j>", "<C-w>-", with_desc("Resize down"))

-- Mini Picker
keymap.set("n", "<leader>fe", "<cmd>lua MiniFiles.open()<cr>", with_desc("Explorer"))
keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>", with_desc("Finder"))
keymap.set("n", "<leader>/", "<cmd>Pick grep_live<cr>", with_desc("Live Grep"))
keymap.set("n", "<leader>bb", "<cmd>Pick buffers<cr>", with_desc("Buffers"))
keymap.set("n", "<leader>fh", "<cmd>Pick help<cr>", with_desc("Help"))

-- Git
keymap.set("n", "<leader>gg", ":Neogit<CR>", with_desc("NeoGit"))
keymap.set("n", "<leader>go", "<cmd>lua MiniDiff.toggle_overlay()<cr>", with_desc("MiniDiff"))
