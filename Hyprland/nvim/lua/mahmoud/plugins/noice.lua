-- INFO: Done

return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		-- code
		require("noice").setup({
			notify = {
				enabled = false,
			},
			cmdline = {
				enabled = true, -- Show the command line in a floating UI
			},
			messages = {
				enabled = false, -- Disable message spam at the bottom
				view = "notify", -- You can switch views (notify, mini, etc.)
			},
			lsp = {
				progress = {
					enabled = false,
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
		})
	end,
}
