return {
  {
    "vyfor/cord.nvim",
    event = "VeryLazy",
    build = ":Cord update",
    opts = {
      editor = {
        client = "neovim",
        tooltip = "Neovim",
      },

      display = {
        theme = "default",
				flavour = "dark",
      },

      text = {
        viewing = function(opts)
					return string.format('Watching %s (Or probably AFK)', opts.filename)
				end,
        editing = function(opts)
					return string.format('Editing %s', opts.filename)
				end,
        file_browser = "Exploring files",
        plugin_manager = "Managing plugins",
        lsp = "Configuring LSP",
        workspace = function(opts)
					return string.format('Currently in %s', opts.workspace)
				end,

        quotes = {
          "If it works, PLEASE... don't touch it",
          "If you feel bad, remember that someone in the world is correcting some vibe coding bullshit",
          "Compilation is like arguing with your wife: the compiler is always right, no matter what",
          "Currently fighting against his own code",
          "Keep calm, and format your code",
        },
      },

      assets = {
        large = {
          icon = "neovim", -- logo Neovim intégré
          text = "Neovim",
        },
        small = {
          icon = "file",    -- logo générique pour fichier
          text = "${filename}",
        },
      },
    },
  },
}

