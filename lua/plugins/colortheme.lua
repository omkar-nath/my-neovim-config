return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false, -- Load the theme during startup
		priority = 1000, -- Ensure it loads first
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true, -- Enable transparent background
					terminal_colors = true, -- Use theme colors in the terminal
					styles = {
						comments = "italic", -- Italicize comments
						keywords = "bold", -- Bold keywords
						functions = "italic,bold", -- Functions are italic and bold
						variables = "NONE", -- No specific style for variables
					},
				},
			})
			-- Set the colorscheme
			vim.cmd("colorscheme duskfox")
		end,
	},
}
