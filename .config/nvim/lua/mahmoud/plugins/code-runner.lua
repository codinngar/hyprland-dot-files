return {
	"CRAG666/code_runner.nvim",
	config = function()
		local code_runner = require("code_runner")

		code_runner.setup()
		-- filetype = {
		-- 	java = {
		-- 		"cd $dir &&",
		-- 		"javac $fileName &&",
		-- 		"java $fileNameWithoutExt",
		-- 	},
		-- },
		-- })

		vim.keymap.set("n", "<leader>rr", "<cmd>RunCode<cr>", { desc = "Run code" })
	end,
}
