-- Dashboard
return{
	{
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				[[M       M   JJJJJ    K   K]],
				[[MM     MM     J      K  K ]],
				[[M M   M M     J      K K  ]],
				[[M  M M  M     J      KK   ]],
				[[M   M   M J   J      K K  ]],
				[[M       M  JJJ       K  K ]]
			}

			-- menu options
			dashboard.section.buttons.val = {
				dashboard.button("e", "📄  New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("f", "📁  Find file", ":Telescope find_files<CR>"),
				dashboard.button("r", "🕒  Recent files", ":Telescope oldfiles<CR>"),
				dashboard.button("q", "🚪  Quit Neovim", ":qa<CR>"),
			}

			alpha.setup(dashboard.opts)
		end,
	}
}
