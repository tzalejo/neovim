return {

	{ "nvim-lua/plenary.nvim" }, -- lua functions that many plugins 

	{ "bluz71/vim-nightfly-guicolors" }, -- preferred colorscheme

	{"christoomey/vim-tmux-navigator"}, -- tmux & split window navigation

	{"szw/vim-maximizer"}, -- maximizes and restores current window

	-- essential plugins
	{"tpope/vim-surround"}, -- add, delete, change surroundings {it's awesome)
	{"inkarkat/vim-ReplaceWithRegister"}, -- replace with register contents using motion {gr + motion)

	-- commenting with gc
	{"numToStr/Comment.nvim"},


	-- vs-code like icons
	{"nvim-tree/nvim-web-devicons"},

	-- statusline
	{"nvim-lualine/lualine.nvim"},

	-- Para realizar comentarios
	{"b3nj5m1n/kommentary"},

	-- fuzzy finding w/ telescope
	-- { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }, -- dependency for better sorting performance
	-- { "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder
    {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                              , branch = '0.1.1',
		  dependencies = { 'nvim-lua/plenary.nvim' }
	},


	-- autocompletion
	{"hrsh7th/cmp-buffer"}, -- source for text in buffer
	{"hrsh7th/cmp-path"}, -- source for file system paths
	{"hrsh7th/cmp-nvim-lua"},

	-- snippets
	{"L3MON4D3/LuaSnip"}, -- snippet engine
	{"saadparwaiz1/cmp_luasnip"}, -- for autocompletion
	{"rafamadriz/friendly-snippets"}, -- ful snippets

	-- managing & installing lsp servers, linters & formatters
	-- {"williamboman/mason.nvim"}, -- in charge of managing lsp servers, linters & formatters
	-- {"williamboman/mason-lspconfig.nvim"}, -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	-- {"neovim/nvim-lspconfig"}, -- easily configure language servers
	{"hrsh7th/cmp-nvim-lsp"}, -- for autocompletion
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}, -- enhanced lsp uis
	{"jose-elias-alvarez/typescript.nvim"}, -- additional functionality for typescript server {e.g. rename file & update imports)
	{"onsails/lspkind.nvim"}, -- vs-code like icons for autocompletion

	-- formatting & linting
	{"jose-elias-alvarez/null-ls.nvim"}, -- configure formatters & linters
	{"jayp0521/mason-null-ls.nvim"}, -- bridges gap b/w mason & null-ls

	-- Permite eliminar búferes {cerrar archivos) sin cerrar sus ventanas o estropear su diseño.
	{ "moll/vim-bbye" },

}
