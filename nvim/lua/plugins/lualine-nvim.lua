local config = function()
	local theme = require("lualine.themes.nightfox")
	theme.normal.c.bg = nil

  require("lualine").setup({
    options = {
      theme = theme,
      globalstatus = true,
    },
    tabline = {
      lualine_a = { "mode" },
      lualine_b = { "buffers" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    sections = {
      lualine_a = {
        'buffers',
      }
    },
  })
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
