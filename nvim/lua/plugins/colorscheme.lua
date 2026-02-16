return {
	"rose-pine/nvim",
	-- "folke/tokyonight.nvim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	opts = {},

	config = function()
		-- Set the colorscheme
		vim.cmd.colorscheme("rose-pine")

		-- Make general elements transparent
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
