return {

    { "nvim-lua/plenary.nvim" }, -- lua functions that many plugins

    { "bluz71/vim-nightfly-guicolors" }, -- preferred colorscheme

    { "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation

    { "szw/vim-maximizer" }, -- maximizes and restores current window

    -- essential plugins
    { "tpope/vim-surround" }, -- add, delete, change surroundings {it's awesome)
    { "inkarkat/vim-ReplaceWithRegister" }, -- replace with register contents using motion {gr + motion)

    -- commenting with gc
    { "numToStr/Comment.nvim" },

    -- vs-code like icons
    { "nvim-tree/nvim-web-devicons" },

    -- statusline
    { "nvim-lualine/lualine.nvim" },

    -- Para realizar comentarios
    { "b3nj5m1n/kommentary" },

    -- autocompletion
    { "hrsh7th/cmp-buffer" }, -- source for text in buffer
    { "hrsh7th/cmp-path" }, -- source for file system paths
    { "hrsh7th/cmp-nvim-lua" },

    -- snippets
    { "L3MON4D3/LuaSnip" }, -- snippet engine
    { "saadparwaiz1/cmp_luasnip" }, -- for autocompletion
    { "rafamadriz/friendly-snippets" }, -- ful snippets

    { "jose-elias-alvarez/typescript.nvim" }, -- additional functionality for typescript server {e.g. rename file & update imports)
    { "onsails/lspkind.nvim" }, -- vs-code like icons for autocompletion

    -- Permite eliminar búferes {cerrar archivos) sin cerrar sus ventanas o estropear su diseño.
    { "moll/vim-bbye" },

    -- Permite seleccion rapida
    { "mg979/vim-visual-multi", branch = "master" },
}
