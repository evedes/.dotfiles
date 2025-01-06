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
  },
}
