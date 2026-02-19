return {
	'saecki/crates.nvim',
	tag = 'stable',
	event = { "BufRead Cargo.toml" },
	config = function()
		local crates = require('crates')

		crates.setup({
			-- 'popup' est devenu 'window' ou les options ont bougé
			-- On simplifie pour éviter les clés invalides
			completion = {
				cmp = { enabled = true }
			},
			lsp = {
				enabled = true,
				actions = true,
				completion = true,
				hover = true,
			},
		})

		local opts = { silent = true }

		-- Les fonctions modernes n'ont plus le préfixe 'show_' ou 'focus_'
		-- dans les dernières versions, on utilise souvent l'API directe :

		vim.keymap.set('n', '<leader>ct', crates.toggle, { silent = true, desc = "Toggle crates.nvim" })
		vim.keymap.set('n', '<leader>cr', crates.reload, opts)

		-- Pour ouvrir et entrer dans la fenêtre (Versions / Features)
		vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, opts)
		vim.keymap.set('n', '<leader>cf', crates.show_features_popup, opts)
		vim.keymap.set('n', '<leader>cd', crates.show_dependencies_popup, opts)

		-- Mise à jour
		vim.keymap.set('n', '<leader>cu', crates.update_crate, opts)
		vim.keymap.set('n', '<leader>cU', crates.upgrade_crate, opts)

		-- LA TOUCHE MAGIQUE : Si tu es sur le popup mais pas "dedans",
		-- ce raccourci te permet d'y entrer pour naviguer :
		vim.keymap.set('n', '<leader>f', crates.focus_popup, opts)
	end,
}
