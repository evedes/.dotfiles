local config = function()
	-- Default options:
	require('kanagawa').setup({
		compile = false,
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true},
		statementStyle = { bold = true },
		typeStyle = {},
		transparent = true,
		dimInactive = false,
		terminalColors = true,
		colors = {
			palette = {},
			theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		},
		overrides = function(colors)
			return {}
		end,
		theme = "dragon",
		background = {
			dark = "dragon",
			light = "lotus"
		},
	})
	vim.cmd("colorscheme kanagawa")
end

return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = config
}
