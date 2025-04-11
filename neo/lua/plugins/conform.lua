return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      javascriptreact = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 250,
      lsp_fallback = true, -- if conform doesn't find the external formatter it will try to use lsp formatter
    },
  },
}
