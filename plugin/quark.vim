if exists(':WebDevIconsGetFileType')
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
