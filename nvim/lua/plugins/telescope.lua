local config = function()
	require("telescope").setup({})

  local keymap = vim.keymap
  keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
end


return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.5',
  dependencies = { "nvim-lua/plenary.nvim" },
  config = config
}
