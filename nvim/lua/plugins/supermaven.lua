return {
  "supermaven-inc/supermaven-nvim",
  event = "VeryLazy",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-l>",
        clear_suggestion = "<C-k>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = { cpp = true },
      color = {
        suggestion_color = "#ffffff",
        cterm = 244,
      },
      log_level = "info",
      disable_inline_completion = false,
      disable_keymaps = false,
      condition = function()
        return false
      end,
    })
  end,
}
