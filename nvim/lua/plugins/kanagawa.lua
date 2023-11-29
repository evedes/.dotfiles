return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("colorscheme kanagawa-wave")
	end,
}
