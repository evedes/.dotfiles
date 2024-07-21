return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          args = { "--disable", "MD012", "MD013", "--" },
        },
      },
    },
  },
}
