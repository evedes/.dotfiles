return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Multiverse",
        path = "/home/edo/Dropbox/Multiverse",
      },
    },
    templates = {
      folder = "Templates",
    },
  },
}
