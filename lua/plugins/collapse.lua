return {
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" }, -- 'requires' in Lazy way
		event = "BufReadPost", -- Lazy load on file read
		config = function()
			vim.o.foldcolumn = "1" -- Show fold column
			vim.o.foldlevel = 99 -- Keep folds open
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true

			-- Setup nvim-ufo with LSP as a provider
			require("ufo").setup({
				provider_selector = function(_, _, _)
					return { "lsp", "indent" }
				end,
			})
		end,
	},
}
