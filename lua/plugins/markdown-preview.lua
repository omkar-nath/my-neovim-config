return {
	-- install without yarn or npm

	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown", "mdx" },
	config = function()
		vim.fn["mkdp#util#install"]()
		vim.g.mkdp_filetypes = { "markdown", "mdx" }
	end,
}
