return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.config").setup({
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"bash", "dockerfile", "gitignore", "html",
				"javascript", "json", "lua", "java",
				"markdown", "markdown_inline",
				"python", "rst", "rust",
				"typescript", "vim", "yaml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
