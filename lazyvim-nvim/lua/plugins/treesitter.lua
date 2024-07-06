return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.2",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "gitignore",
        "bash",
        "dockerfile",
        "query",
        "vimdoc",
        "graphql",
        "http",
        "json",
        "jsonc",
        "regex",
        "ruby",
        "scss",
        "sql",
        "vim",
        "lua",
        "yaml",
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
