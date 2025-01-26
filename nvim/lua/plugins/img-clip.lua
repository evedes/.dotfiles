return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    file_name = "%Y%m%d%H%M%S",
  },
  keys = {
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from clipboard" },
  },
}
