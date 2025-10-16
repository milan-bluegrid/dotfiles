-- Highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			-- Add languages to be installed here that you want installed for treesitter
			ensure_installed = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"vimdoc",
				"vim",
				"regex",
				"terraform",
				"sql",
				"dockerfile",
				"toml",
				"json",
				"java",
				"groovy",
				"go",
				"gitignore",
				"graphql",
				"yaml",
				"make",
				"cmake",
				"markdown",
				"markdown_inline",
				"bash",
				"tsx",
				"css",
				"html",
			},

			-- Autoinstall languages that are not installed
			auto_install = true,

			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<c-space>",
					node_incremental = "<c-space>",
					scope_incremental = "<c-s>",
					node_decremental = "<M-space>",
				},
			},
		})
	end,
}
