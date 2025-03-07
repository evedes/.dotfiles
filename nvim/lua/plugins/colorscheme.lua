return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").setup({
      -- Enable transparent background
      transparent_bg = true,
      -- Required fields for Nordic theme
      on_palette = function(palette)
        return palette
      end,
      after_palette = function() end,
    })
    require("nordic").load()
  end,
}
