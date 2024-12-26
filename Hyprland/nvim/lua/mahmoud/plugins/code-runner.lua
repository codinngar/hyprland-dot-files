return {
	"CRAG666/code_runner.nvim",
	config = function()
		local code_runner = require("code_runner")

		code_runner.setup({
			mode = "toggleterm",
			term = {
				position = "horizontal",
			},
			filetype = {
				c = {
					"clear &&",
					"gcc $fileName -o $fileNameWithoutExt &&",
					"./$fileNameWithoutExt",
				},
			},
		})

		vim.keymap.set("n", "mm", "<cmd>RunCode<cr>", { desc = "Run code" })
	end,
}
