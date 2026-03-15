if exists('g:loaded_web_devicons') || pcall(require, 'nvim-web-devicons')
	lua << EOF

	local ok, devicons = pcall(require, 'nvim-web-devicons')

	if ok then
		devicons.set_icon {
			quark = {
				icon = "*",
				color = "#6c00ff",
				name = "quark"
			}
		}
	end

	EOF
endif
