return {
	"scottmckendry/cyberdream.nvim",
	lazy = false, -- Load the theme during startup
	priority = 1000, -- Ensure it loads first
	config = function()
		require("cyberdream").setup({
			transparent = true, -- Enable transparent background
			terminal_colors = true,
			italic_comments = true,
			borderless_telescope = false, -- Use theme colors in the terminal
			extensions = {
				telescope = true,
				notify = true,
			},
		})
		-- Set the colorscheme
		vim.cmd("colorscheme cyberdream")
	end,
}
