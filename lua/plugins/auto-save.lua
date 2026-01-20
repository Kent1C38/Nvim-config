return {
	{
		"Pocco81/auto-save.nvim",
		event = { "InsertLeave", "TextChanged" },
		config = function()
			require("auto-save").setup({
				enabled = true,
				execution_message = {
					message = function()
						return "" -- pas de spam dans la statusline
					end,
				},
				trigger_events = {
					"InsertLeave",
					"TextChanged",
				},
				debounce_delay = 150,
				condition = function(buf)
					local fn = vim.fn
					local utils = require("auto-save.utils.data")

					if fn.getbufvar(buf, "&modifiable") == 1
							and utils.not_in(fn.getbufvar(buf, "&filetype"), { "neo-tree", "lazy" }) then
						return true
					end
					return false
				end,
			})
		end,
	},
}
