return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    -- Setup de bufferline
    require("bufferline").setup({
      options = {
        separator_style = "slant",
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
      },
    })

    -- Keymaps fiables pour bufferline
    local keymap = vim.keymap.set

    -- Fermer le buffer actif
    keymap("n", "<leader>\\", function()
      vim.cmd("bdelete")  -- supprime le buffer actif proprement
    end, { desc = "Fermer le buffer actif" })

    -- Navigation entre buffers (touches sûres)
    keymap("n", "<S-g>", ":BufferLineCyclePrev<CR>", { desc = "Buffer précédent" })
    keymap("n", "<S-h>", ":BufferLineCycleNext<CR>", { desc = "Buffer suivant" })

    -- Optionnel : navigation par leader si tu veux
    keymap("n", "<leader>g", ":BufferLineCyclePrev<CR>", { desc = "Buffer précédent" })
    keymap("n", "<leader>h", ":BufferLineCycleNext<CR>", { desc = "Buffer suivant" })
  end,
}

