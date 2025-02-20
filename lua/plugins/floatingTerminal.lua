return {
	{
		"numToStr/FTerm.nvim",

		config = function()
			-- Configuration for FTerm
			require("FTerm").setup({
				border = "rounded", -- Border style (e.g., 'single', 'double', 'rounded', etc.)
				dimensions = {
					height = 0.6, -- Height of the terminal (percentage of the window)
					width = 0.8, -- Width of the terminal (percentage of the window)
				},
			})

			-- Keybindings to toggle the terminal
			vim.keymap.set("n", "<A-t>", '<CMD>lua require("FTerm").toggle()<CR>')
			vim.keymap.set("t", "<A-t>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
		end,
	},
}
