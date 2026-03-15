if has('nvim')
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

		devicons.set_icon_by_filetype {
			quark = "quark"
		}
	end

EOF
endif
