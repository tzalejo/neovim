	-- treesitter configuration
return	{
	"nvim-treesitter/nvim-treesitter",
	build = function()	
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	dependencies = {
		"windwp/nvim-ts-autotag", -- autoclose tags
		"nvim-treesitter/playground",
		"nvim-treesitter/nvim-treesitter-refactor",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		-- configure treesitter
		require('nvim-treesitter.configs').setup{
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"php",
				"phpdoc",
				"vim",
				"sql",
			},
			-- auto install above language parsers
			auto_install = true,

		}

	end
}
