return {
	{
		"benlubas/molten-nvim",
		build = ":UpdateRemotePlugins",
		config = function()
			vim.g.molten_auto_open_output = false
			vim.g.molten_image_provider = "image.nvim"
			vim.g.molten_wrap_output = true
			vim.g.molten_virt_text_output = true
			vim.g.molten_virt_lines_off_by_1 = true
		end,
	},
	{
		"3rd/image.nvim",
		opts = {
			backend = "kitty", -- or "kitty", "wezterm", "sixel"
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = false,
					filetypes = { "markdown", "quarto" },
				},
			},
		},
	},

	{ "quarto-dev/quarto-nvim", dependencies = { "jmbuhr/otter.nvim" } },
}
