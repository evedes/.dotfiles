return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  opts = {
    autoformat = true,
  },
  config = function()
    -- Lua LSP setup
    require("lspconfig").lua_ls.setup({})
  end
}
