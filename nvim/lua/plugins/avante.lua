return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "claude",
    claude = {
      endpoint = "https://api.anthropic.com",
      model = "claude-3-5-sonnet-20241022",
      -- model = "claude-3-7-sonnet-20250219",
      timeout = 30000,
      temperature = 0,
      max_tokens = 8192,
      disable_tools = true
    },
  },
  keys = {
    { "<leader>ab", mode = { "n" }, "<cmd>AvanteAddBuffer<cr>", desc = "Add Current Buffer to Chat" },
    { "<leader>aB", mode = { "n" }, "<cmd>AvanteAddBuffer<cr>", desc = "Add All Open Buffers to Chat" },
    { "<leader>am", mode = { "n" }, "<cmd>AvanteModel<cr>", desc = "Select AI Model" },
    { "<leader>ar", mode = { "n" }, "<cmd>AvanteRefresh<cr>", desc = "Refresh" },
    { "<leader>at", mode = { "n" }, "<cmd>AvanteToggle<cr>", desc = "Toggle AI Sidebar" },
    { "<leader>ac", mode = { "n" }, "<cmd>AvanteClear<cr>", desc = "Clear Chat" },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "hrsh7th/nvim-cmp",
    "echasnovski/mini.icons",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
