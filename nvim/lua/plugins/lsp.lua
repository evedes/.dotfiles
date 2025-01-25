return {
  "neovim/nvim-lspconfig",
  opts = {
    autoformat = true,
    servers = {
      nil_ls = { -- disable nil LSP
        mason = false,
        enabled = false,
      },
    },
  },
}
