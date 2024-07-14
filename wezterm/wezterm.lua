-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Font
config.font = wezterm.font({
	family = "Firacode Nerd Font Mono",
	-- harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
})
-- config.window_padding = {
--   left = 20,
--   right = 20,
--   top = 20,
--   bottom = 20,
-- }
config.font_size = 16

-- Theme

-- [colors.primary]
-- background = "#202020"
-- foreground = "#fff4d2"
--
-- [colors.cursor]
-- text = "#bdae93"
-- cursor ="#665c54"
--
-- [colors.normal]
-- black = "#1d2021"
-- red = "#cc241d"
-- green = "#98971a"
-- yellow = "#d79921"
-- blue = "#458588"
-- magenta = "#b16286"
-- cyan = "#689d6a"
-- white = "#a89984"
--
-- [colors.bright]
-- black = "#a89984"
-- red = "#fb4934"
-- green = "#b8bb26"
-- yellow = "#fabd2f"
-- blue = "#83a598"
-- magenta = "#d3869b"
-- cyan = "#8ec07c"
-- white = "#fff4d2"
--
-- config.color_scheme = 'Gruvbox Dark (Gogh)'

config.colors = {
	foreground = "#fff4d2",
	-- background = "#202020",
	background = "#000000",

	cursor_bg = "#bdae93",
	cursor_fg = "#665c54",

	selection_bg = "#abb2bf",
	selection_fg = "#262626",

	split = "#3a3a3a",

	ansi = {
		"#1d2021",
		"#cc241d",
		"#98971a",
		"#d79921",
		"#458588",
		"#b16286",
		"#689d6a",
		"#a89984",
	},

	brights = {
		"#a89984",
		"#fb4934",
		"#b8bb26",
		"#fabd2f",
		"#83a598",
		"#d3869b",
		"#8ec07c",
		"#fff4d2",
	},
}

-- Opacity
config.window_background_opacity = 0.8

-- Tab bar
config.enable_tab_bar = false

-- Keybindings
config.disable_default_key_bindings = true
config.keys = {
	{ key = "=", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
	-- Copy
	{
		key = "C",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("Clipboard"),
	},

	-- Paste
	{
		key = "V",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},

	-- Vertical Split
	{
		key = "_",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Horizontal Split
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Close Split
	-- {
	--
	-- },
}

return config
