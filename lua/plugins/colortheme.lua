return {

	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,

	config = function()
		require("cyberdream").setup({
			transparent = true,
			extensions = {
				telescope = false,
			},
		})
		vim.cmd.colorscheme("cyberdream")
	end,
}
