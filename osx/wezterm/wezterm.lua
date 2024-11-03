-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration
local config = wezterm.config_builder()

-- Font configuration
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15
config.line_height = 1.30

-- Window configuration
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Color and appearance
config.color_scheme = "kanagawabones"
config.window_background_opacity = 1
config.macos_window_background_blur = 10

-- Window behavior
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false

-- Add cursor customization
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 800
config.force_reverse_video_cursor = true

-- Key bindings
config.keys = {
	-- Scroll Up/Down with keyboard
	{ key = "PageUp", mods = "SHIFT", action = act.ScrollByPage(-0.5) },
	{ key = "PageDown", mods = "SHIFT", action = act.ScrollByPage(0.5) },
	-- Disable default new tab keybinding
	{ key = "t", mods = "CMD", action = act.DisableDefaultAssignment },

	-- Add quick font size adjustments
	{ key = "=", mods = "CMD", action = act.IncreaseFontSize },
	{ key = "-", mods = "CMD", action = act.DecreaseFontSize },
	{ key = "0", mods = "CMD", action = act.ResetFontSize },

	-- Add split pane shortcuts
	{ key = "\\", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "-", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
}

-- Performance optimization
config.animation_fps = 1
config.max_fps = 60

-- Better text rendering
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"

return config
