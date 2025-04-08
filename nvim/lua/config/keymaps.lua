local opts = { noremap = true, silent = true }
local keymap = vim.keymap

local function with_desc(description)
  return vim.tbl_extend("force", opts, { desc = description })
end

keymap.set("i", "jk", "<Esc>", with_desc("Escape"))
keymap.set("n", "x", '"_x') -- Sends the deleted char to the black hole register

-- Utils
keymap.set("n", "<leader>ul", "<cmd>Lazy<cr>", with_desc("Lazy")) -- Lazy

-- Increment / Decrement numbers
keymap.set("n", "+", "<C-a>", with_desc("Increment number"))
keymap.set("n", "-", "<C-x>", with_desc("Decrement number"))

-- Save file and quit
keymap.set("n", "<leader>w", "<cmd>update<cr>", with_desc("Write"))
keymap.set("n", "<leader>q", "<cmd>wq<cr>", with_desc("Quit (save)"))
keymap.set("n", "<leader>Q", "<cmd>wqa<cr>", with_desc("Quit all (save all)"))

-- Resize window
keymap.set("n", "<C-A-h>", "<C-w><", with_desc("Resize left"))
keymap.set("n", "<C-A-l>", "<C-w>>", with_desc("Resize right"))
keymap.set("n", "<C-A-k>", "<C-w>+", with_desc("Resize up"))
keymap.set("n", "<C-A-j>", "<C-w>-", with_desc("Resize down"))

-- Git
keymap.set("n", "<leader>gg", ":Neogit<CR>", with_desc("NeoGit"))
keymap.set("n", "<leader>gl", function() vim.cmd("terminal lazygit") end, with_desc("LazyGit"))
keymap.set("n", "<leader>go", "<cmd>lua MiniDiff.toggle_overlay()<cr>", with_desc("MiniDiff"))

-- Mini Picker
keymap.set("n", "<leader>fe", "<cmd>lua MiniFiles.open()<cr>", with_desc("Explorer"))
keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>", with_desc("Finder"))
keymap.set("n", "<leader>fg", "<cmd>Pick grep_live<cr>", with_desc("Live Grep"))
keymap.set("n", "<leader>/", "<cmd>Pick grep_live<cr>", with_desc("Live Grep"))
keymap.set("n", "<leader>fb", "<cmd>Pick buffers<cr>", with_desc("Buffers"))
keymap.set("n", "<leader>fh", "<cmd>Pick help<cr>", with_desc("Help"))
keymap.set("n", "<leader>fc",
  function()
    local config_dir = vim.fn.stdpath("config")
    require('mini.pick').builtin.files({ cwd = config_dir })
  end, with_desc("Config"))

-- Mini Buffer
keymap.set("n", "<leader>br", "<cmd>lua MiniBufremove.unshow()<cr>", with_desc("Remove"))
keymap.set("n", "<leader>bd", "<cmd>lua MiniBufremove.delete()<cr>", with_desc("Delete"))
keymap.set("n", "<leader>bw", "<cmd>lua MiniBufremove.wipeout()<cr>", with_desc("Wipeout"))
keymap.set("n", "<leader>ba", "<cmd>%bd|e#|bd#<cr>", with_desc("Delete All Except Current"))

-- Img Clip
keymap.set("n", "<leader>ip", "<cmd>PasteImage<cr>", with_desc("Paste Image"))

-- Obsidian

keymap.set("n", "<leader>of", "<cmd>ObsidianFollowLink<CR>", with_desc("Follow Link"))
keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", with_desc("New Note"))
keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", with_desc("Show Backlinks"))
keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", with_desc("Search"))
keymap.set("n", "<leader>ot", "<cmd>ObsidianTags<CR>", with_desc("Add Tags"))
keymap.set("n", "<leader>oo", "<cmd>ObsidianQuickSwitch<CR>", with_desc("Quick Switch"))
keymap.set("n", "<leader>ol", "<cmd>ObsidianLink<CR>", with_desc("Create Link"))
keymap.set("n", "<leader>od", "<cmd>ObsidianToday<CR>", with_desc("Daily Note"))
keymap.set("n", "<leader>oT", "<cmd>ObsidianTemplate<CR>", with_desc("Insert Template"))
keymap.set("n", "<leader>ow", "<cmd>ObsidianWorkspace<CR>", with_desc("Switch Workspace"))
keymap.set("n", "<leader>oL", "<cmd>ObsidianLinkNew<CR>", with_desc("Create Link to New Note"))
keymap.set("n", "<leader>oe", "<cmd>ObsidianExtractNote<CR>", with_desc("Extract Note from Selection"))
keymap.set("n", "<leader>op", "<cmd>ObsidianQuickSwitch<CR>", with_desc("Quick Switch Preview"))
keymap.set("v", "<leader>oS", "<cmd>ObsidianSearch<CR>", with_desc("Search Selection"))
keymap.set("n", "<leader>or", "<cmd>ObsidianRename<CR>", with_desc("Rename Note"))
keymap.set("n", "<leader>oc", "<cmd>ObsidianCheck<CR>", with_desc("Check Links"))
keymap.set("n", "<leader>oO", "<cmd>ObsidianOpen vsplit<CR>", with_desc("Open in Vertical Split"))
keymap.set("n", "<leader>oh", "<cmd>ObsidianOpen split<CR>", with_desc("Open in Horizontal Split"))
keymap.set(
  "n",
  "<leader>og",
  function()
    vim.cmd("ObsidianOpen")
    vim.defer_fn(function()
      if vim.fn.has("mac") == 1 then
        vim.fn.system('osascript -e \'tell application "System Events" to keystroke "g" using command down\'')
      elseif vim.fn.has("unix") == 1 then
        vim.fn.system("xdotool key ctrl+g")
      end
    end, 1000)
  end,
  with_desc("Open in Obsidian Graph View"))
