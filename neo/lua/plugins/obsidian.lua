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
}
