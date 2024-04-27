-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                                                    ]],
	[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
	[[                                                    ]], }


dashboard.section.buttons.val = {
	dashboard.button("Space f f", "File tree"),
	dashboard.button("Space s f", "Search file"),
	dashboard.button("Space f r", "Recently used files"),
	dashboard.button("Space g f", "GitHub"),
	dashboard.button("Space f h", "Harpoon"),
	dashboard.button("q", "Quit Neovim", ":qa<CR>"),
}

local function footer()
	return ""
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
