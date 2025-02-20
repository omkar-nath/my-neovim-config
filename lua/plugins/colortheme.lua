return {
	{
		"zootedb0t/citruszest.nvim",
		lazy = false, -- Ensure the plugin is loaded immediately
		priority = 1000, -- Set a high priority to load it before other plugins
		config = function()
			-- Load the citruszest theme
			require("citruszest").setup({
				-- Add any custom configuration options here (optional)
				transparent_background = true, -- Enable transparent background
				styles = {
					comments = { italic = true }, -- Customize comment style
					keywords = { bold = true }, -- Customize keyword style
				},
			})

			-- Set the colorscheme
			vim.cmd("colorscheme citruszest")
		end,
	},
}
