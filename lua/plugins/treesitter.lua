-- treesitter configuration
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag", -- autoclose tags
		"nvim-treesitter/playground",
		"nvim-treesitter/nvim-treesitter-refactor",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		-- configure treesitter
		require("nvim-treesitter.configs").setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "org" },
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"bash",
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
				"query",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			refactor = {
				highlight_definitions = { enable = true },
				smart_rename = {
					enable = false,
					keymaps = {
						smart_rename = "trr",
					},
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@conditional.outer",
						["ic"] = "@conditional.inner",
						["al"] = "@loop.outer",
						["il"] = "@loop.inner",
					},
				},
			},
			playground = {
				enable = true,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = false, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
		})
	end,
}
