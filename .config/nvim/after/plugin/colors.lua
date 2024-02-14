require("catppuccin").setup({
	flavour = "mocha",           -- latte, frappe, macchiato, mocha
	transparent_background = false, -- disables setting the background color.
	show_end_of_buffer = false,  -- shows the '~' characters after the end of buffers
	term_colors = false,         -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false,         -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15,       -- percentage of the shade to apply to the inactive window
	},
	no_italic = true,            -- Force no italic
	no_bold = false,             -- Force no bold
	no_underline = false,        -- Force no underline
	styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {
		mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
		},
	},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})
require('everblush').setup({

	-- Default options
	override = {},
	transparent_background = true,
	nvim_tree = {
		contrast = false,
	},

})
-- Lua
require('onedark').setup {
	style = 'deep',
	transparent = true,        -- Show/hide background
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
	lualine = {
		transparent = true,    -- lualine center bar transparency
	},
	colors = {},               -- Override default colors
	highlights = {},           -- Override highlight groups
	-- Plugins Config --
	diagnostics = {
		darker = false, -- darker colors for diagnostic
		undercurl = true, -- use undercurl instead of underline for diagnostics
		background = true, -- use background color for virtual text
	},
}

-- setup must be called before loading
function ColorMyPencils(color)
	color = color or "onedark"

	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
