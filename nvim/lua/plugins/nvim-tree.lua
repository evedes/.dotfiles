local config = function()
	require("nvim-tree").setup({
		view = {
			width = 35,
		},
		renderer = {
			indent_markers = {
				enable = true
			},
			icons = {
				glyphs = {
					folder = {
						arrow_closed = "", -- arrow when folder is closed
						arrow_open = "", -- arrow when folder is open
					},
				},
			},
		},
		filters = {
			dotfiles = false,
			custom = { ".DS_Store" }
		},
	})

	-- set keymaps
	local keymap = vim.keymap

	keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	lazy = false,
	config = config
}
