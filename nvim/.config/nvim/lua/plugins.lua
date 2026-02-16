return {
	"eandrju/cellular-automaton.nvim",
	-- Detect tabstop and shiftwidth automatically
	-- "tpope/vim-sleuth",

	-- navigate between windows with control + h,j,k,l
	-- "christoomey/vim-tmux-navigator",

	-- Git related
	"tpope/vim-fugitive",

	-- Maximizes and restores current window (mapped to <leader>sm [S]plit [M]aximize)
	"szw/vim-maximizer",

	-- add, delete, change surroundings (it's awesome)
	"tpope/vim-surround",

	-- undo tree
	"mbbill/undotree",

	-- autoclose parens, brackets, quotes, etc...
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	-- autoclose tags
	{ "windwp/nvim-ts-autotag", dependencies = "nvim-treesitter" },

	-- vimTex
	"lervag/vimtex",

	-- "gc" to comment visual regions/lines
	"tpope/vim-commentary",

	-- for Rust
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
}
