local config = function()
  vim.keymap.set("n", "<leader>ic", function()
    -- This is the command that clears the images
    require("image").clear()
    -- I'm using [[ ]] to escape the special characters in a command
    -- vim.cmd([[lua require("image").clear()]])
    print("Images cleared")
  end, { desc = "[P]Clear images" })

  require("image").setup({
    backend = "kitty",
    kitty_method = "normal", -- can be "normal" or "progressive"
    processor = "magick_cli", -- or "magick_cli"
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        floating_windows = false, -- if true, images will be rendered in floating markdown windows
        filetypes = { "markdown", "vimwiki", "md" }, -- markdown extensions (ie. quarto) can go here
      },
      neorg = {
        enabled = true,
        filetypes = { "norg" },
      },
      typst = {
        enabled = true,
        filetypes = { "typst" },
      },
      html = {
        enabled = false,
      },
      css = {
        enabled = false,
      },
    },
    max_width = nil,
    max_height = nil,
    max_width_window_percentage = nil,
    max_height_window_percentage = 50,
    window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
    window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "snacks_notif", "scrollview", "scrollview_sign" },
    editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
    tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
    hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
  })
end

return {
  "3rd/image.nvim",
  build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
  config = config,
}
