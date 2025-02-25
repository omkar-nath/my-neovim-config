return {
	"rebelot/kanagawa.nvim",
	priority = 1000, -- Load it early
	config = function()
		require("kanagawa").setup({
			compile = false, -- Set to true to compile for performance
			undercurl = true,
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- Set to true for transparency
			dimInactive = false,
			terminalColors = true,
			colors = {},
			overrides = function(colors)
				return {}
			end,
			theme = "wave", -- Options: "wave", "dragon", "lotus"
			background = {
				dark = "wave",
				light = "lotus",
			},
		})

		vim.cmd("colorscheme kanagawa") -- Apply the theme
	end,
}
