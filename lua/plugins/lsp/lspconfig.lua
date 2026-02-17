return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/lazydev.nvim",                  opts = {} },
	},
	config = function()
		-- 1. On définit les capacités (pour nvim-cmp)
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- 2. Configuration RUST (Nouvelle syntaxe vim.lsp.config)
		vim.lsp.config("rust_analyzer", {
			install = {
				-- Optionnel : permet d'indiquer comment l'installer si manquant
			},
			settings = {
				["rust-analyzer"] = {
					check = { command = "clippy" },
					inlayHints = {
						enable = true,
						renderColons = true,
						typeHints = { enable = true },
					},
				},
			},
		})

		-- 3. ATTENTION : Il faut "activer" la config pour qu'elle s'attache aux fichiers
		-- La nouvelle API demande souvent d'expliciter le démarrage
		vim.lsp.enable("rust_analyzer")
		vim.lsp.enable("pylsp")

		-- Optionnel : configuration des signes (inchangée)
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
				},
			},
		})
	end,
}
