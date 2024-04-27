require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = '|',
		section_separators = '',
	},
	sections = {
		lualine_x = {
			{
				'filetype'
			}
		},
		lualine_c = {
			{
				"filename",
				symbols = {
					modified = "●",
				},
			},
		},
	}
}
