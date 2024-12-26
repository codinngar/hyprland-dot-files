return {
	"echasnovski/mini.surround",
	config = function()
		require("mini.surround").setup({
			mappings = {
				add = "<leader>sa",
				delete = "<leader>sd",
			},
		})
	end,
}
