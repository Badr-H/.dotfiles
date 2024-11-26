local wezterm = require("wezterm")

local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	-- window:gui_window():maximize()
	window:gui_window():toggle_fullscreen()
end)
config = {
	-- Font Configuration
	font = wezterm.font("FiraMono Nerd Font"),
	font_size = 16.0,
	line_height = 1.0,

	-- Color Scheme
	color_scheme = "matrix (terminal.sexy)",
	enable_tab_bar = true,
	window_decorations = "TITLE",
	default_cursor_style = "SteadyBlock",
	colors = {
		cursor_bg = "#AAAAAA",
		cursor_fg = "#AAAAAA",
	},

	-- Window settings
	-- window_background_opacity = 0.95,
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
	hide_tab_bar_if_only_one_tab = true,

	-- Set window title
	-- window_title = "WezTerm",

	-- Enable mouse support
	enable_wayland = false, -- On Windows this is usually false unless you are using WSL or specific setups
	enable_scroll_bar = false,

	-- Keybindings
	leader = { key = " ", mods = "CTRL" },
	keys = {
		{ key = "c", mods = "LEADER", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "-", mods = "LEADER", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
		{ key = "=", mods = "LEADER", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
		{ key = "h", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "j", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "k", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "l", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "]", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
		{ key = "[", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
		{ key = "1", mods = "ALT", action = wezterm.action({ ActivateTab = 0 }) },
		{ key = "2", mods = "ALT", action = wezterm.action({ ActivateTab = 1 }) },
		{ key = "3", mods = "ALT", action = wezterm.action({ ActivateTab = 2 }) },
		{ key = "4", mods = "ALT", action = wezterm.action({ ActivateTab = 3 }) },
		{ key = "5", mods = "ALT", action = wezterm.action({ ActivateTab = 4 }) },
		{ key = "6", mods = "ALT", action = wezterm.action({ ActivateTab = 5 }) },
		{ key = "7", mods = "ALT", action = wezterm.action({ ActivateTab = 6 }) },
		{ key = "8", mods = "ALT", action = wezterm.action({ ActivateTab = 7 }) },
		{ key = "9", mods = "ALT", action = wezterm.action({ ActivateTab = 8 }) },
		-- { key = "w", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
		-- { key = "c", mods = "CTRL|SHIFT", action = wezterm.action({ CopyTo = "Clipboard" }) },
		-- { key = "v", mods = "CTRL|SHIFT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},

	-- Split Pane Configuration
	default_prog = { "C://Program Files/Git//bin//bash.exe" }, -- Default to CMD
	pane_focus_follows_mouse = true,
	use_fancy_tab_bar = false, -- Tab bar that blends into the window

	-- Set the initial window size
	initial_cols = 120,
	initial_rows = 40,

	-- Scrollback buffer
	scrollback_lines = 10000,

	--VI
	use_dead_keys = false,
}
return config
