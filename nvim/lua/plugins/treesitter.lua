return {
  "nvim-treesitter/nvim-treesitter",
  enable = true,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "c",
        "css",
        "clojure",
        "dockerfile",
        "git_config",
        "gitcommit",
        "git_rebase",
        "gitattributes",
        "gitignore",
        "go",
        "html",
        "jsdoc",
        "json",
        "json5",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "prisma",
        "python",
        "query",
        "ruby",
        "rust",
        "scss",
        "slim",
        "tmux",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "yaml",
      },
      auto_install = true,
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        -- This will run `:h syntax` on the current buffer and update all syntax highlighters.
        -- If you're using Ruby or Php, you'll eventually want to set this to true.
        additional_vim_regex_highlighting = true,
      },
    })
  end,
}
