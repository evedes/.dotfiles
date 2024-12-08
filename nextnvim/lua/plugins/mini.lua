return {
	{
		'echasnovski/mini.nvim',
		config = function()
      -- Require ando setup statusline
			local statusline = require 'mini.statusline'
			statusline.setup { use_icons = true }

      -- Require and setup files
      local files = require("mini.files")
      files.setup({ use_icons = true })

      -- Add keymap
      local keymap = vim.keymap
      keymap.set("n", "<leader>f", files.open, { desc = "Open Mini Files" })

    end
	}
}
