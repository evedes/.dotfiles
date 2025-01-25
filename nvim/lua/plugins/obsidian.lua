return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/Nextcloud/Multiverse/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/Nextcloud/Multiverse/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Nextcloud/Multiverse",
      },
    },

    open_app_foreground = true,
    obsidian_app_path = vim.fn.has("mac") == 1 and "/Applications/Obsidian.app" or "obsidian",
  },
  keys = {
    { "<leader>of", "<cmd>ObsidianFollowLink<CR>", desc = "Follow Link" },
    { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Show Backlinks" },
    { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search" },
    { "<leader>ot", "<cmd>ObsidianTags<CR>", desc = "Add Tags" },
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<CR>", desc = "Quick Switch" },
    { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "Create Link" },
    { "<leader>od", "<cmd>ObsidianToday<CR>", desc = "Daily Note" },
    {
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
      desc = "Open in Obsidian Graph View",
    },
    { "<leader>oT", "<cmd>ObsidianTemplate<CR>", desc = "Insert Template" },
    { "<leader>ow", "<cmd>ObsidianWorkspace<CR>", desc = "Switch Workspace" },
    { "<leader>oL", "<cmd>ObsidianLinkNew<CR>", desc = "Create Link to New Note" },
    { "<leader>oe", "<cmd>ObsidianExtractNote<CR>", desc = "Extract Note from Selection" },
    { "<leader>op", "<cmd>ObsidianQuickSwitch<CR>", desc = "Quick Switch Preview" },
    { "<leader>oS", "<cmd>ObsidianSearch<CR>", mode = "v", desc = "Search Selection" },
    { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename Note" },
    { "<leader>oc", "<cmd>ObsidianCheck<CR>", desc = "Check Links" },
    { "<leader>oP", "<cmd>ObsidianPasteImg<CR>", desc = "Paste Image from Clipboard" },
    { "<leader>oO", "<cmd>ObsidianOpen vsplit<CR>", desc = "Open in Vertical Split" },
    { "<leader>oh", "<cmd>ObsidianOpen split<CR>", desc = "Open in Horizontal Split" },
  },
}
