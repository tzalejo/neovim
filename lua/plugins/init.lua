return {

    { "bluz71/vim-nightfly-guicolors" }, -- preferred colorscheme
    { "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
    { "szw/vim-maximizer" }, -- maximizes and restores current window

    -- essential plugins
    { "inkarkat/vim-ReplaceWithRegister" }, -- replace with register contents using motion {gr + motion)

    -- commenting with gc
    { "numToStr/Comment.nvim" },

    -- Para realizar comentarios
    { "b3nj5m1n/kommentary" },

    { "rafamadriz/friendly-snippets" }, -- ful snippets
    { "jose-elias-alvarez/typescript.nvim" }, -- additional functionality for typescript server {e.g. rename file & update imports)
    { "onsails/lspkind.nvim" }, -- vs-code like icons for autocompletion

    -- Permite eliminar búferes {cerrar archivos) sin cerrar sus ventanas o estropear su diseño.
    { "moll/vim-bbye" },

    -- Permite seleccion rapida
    { "mg979/vim-visual-multi", branch = "master" },

    { "tpope/vim-dispatch", cmd = { "Make", "Dispatch" } },
    { "tpope/vim-surround" }, -- add, delete, change surroundings {it's awesome)
    { "tpope/vim-surround" },
    { "tpope/vim-repeat" },
    { "tpope/vim-projectionist" },

    { "jwalton512/vim-blade", enable = false },
}
