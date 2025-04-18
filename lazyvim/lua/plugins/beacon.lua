return {
  "rainbowhxch/beacon.nvim",
  config = function()
    require("beacon").setup({
      enable = true,
      size = 20,
      fade = true,
      minimal_jump = 5,
      show_jumps = true,
      focus_gained = true,
      shrink = true,
      timeout = 500,
      ignore_buffers = {},
      ignore_filetypes = {},
    })
  end,
}
