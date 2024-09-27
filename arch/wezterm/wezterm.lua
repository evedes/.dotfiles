-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMonoNerdFont")
config.font_size = 15
config.line_height = 1.30

config.enable_tab_bar = false
config.window_decorations = "NONE"

config.color_scheme = "Catppuccin Macchiato" -- or Mocha, Macchiato, Frappe, Latte

config.window_background_opacity = 0.96

config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false

config.keys = {
	-- Scroll Up/Down with keyboard
	{ key = "PageUp", mods = "SHIFT", action = act.ScrollByPage(-0.5) },
	{ key = "PageDown", mods = "SHIFT", action = act.ScrollByPage(0.5) },
	-- Disable default new tab keybinding
	{ key = "t", mods = "CMD", action = act.DisableDefaultAssignment },
}

return config
