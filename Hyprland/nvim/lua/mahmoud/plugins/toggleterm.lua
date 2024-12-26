return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-/>]],
			direction = "horizontal",
			size = 10,
			start_in_insert = true, -- Terminal starts in Insert mode
			on_open = function(term)
				vim.cmd("startinsert") -- Automatically enter Insert mode when terminal opens
				-- Set mappings for terminal mode
				vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { buffer = term.bufnr, desc = "Switch to Normal mode" })
				vim.keymap.set("t", "jk", [[<C-\><C-n>]], { buffer = term.bufnr, desc = "Switch to Normal mode (alt)" })
			end,
			on_close = function(_)
				vim.cmd("stopinsert") -- Automatically leave Insert mode when terminal closes
			end,
		})
		vim.keymap.set(
			"n",
			"<leader>tv",
			"<cmd>ToggleTerm direction=vertical size=60<cr>",
			{ desc = "Toggle vertical terminal" }
		)
		vim.keymap.set(
			"n",
			"<leader>th",
			"<cmd>ToggleTerm direction=horizontal size=20<cr>",
			{ desc = "Toggle horizontal terminal" }
		)
		vim.keymap.set(
			"n",
			"<leader>tf",
			"<cmd>ToggleTerm direction=float size=60<cr>",
			{ desc = "Toggle float terminal" }
		)
	end,
}
