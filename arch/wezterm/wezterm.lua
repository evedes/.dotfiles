-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16
config.line_height = 1.30

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.color_scheme = "Catppuccin Macchiato" -- or Mocha, Macchiato, Frappe, Latte

config.window_background_opacity = 0.96
config.macos_window_background_blur = 10

config.window_close_confirmation = "NeverPrompt"

return config
