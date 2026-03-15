if has('nvim')
	if pcall(require, 'nvim-web-devicons')
		lua << EOF

		local devicons = require('nvim-web-devicons')

		devicons.set_icon {
			quark = {
				icon = "*",
				color = "#6c00ff",
				name = "quark"
			}
		}

		EOF
	endif
endif
