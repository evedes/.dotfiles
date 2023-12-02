local config = function()
  vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
  require('nvim-tree').setup({
    filters = {
      dotfiles = false,
    },
    view = {
      adaptive_size = true
    }
  })
end

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = config,
}


