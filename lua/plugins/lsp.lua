return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "jose-elias-alvarez/null-ls.nvim",
        {
            "folke/neodev.nvim",
            opts = {
                lspconfig = true,
                pathStrict = true,
            },
        },
        {
            "williamboman/mason.nvim",
            config = true,
            opts = {
                ui = {
                    border = "rounded",
                },
            },
        },
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    event = "VeryLazy",
    main = "alejandro.lsp",
    opts = {
        mason = {
            enable = true,
            auto_install = false,
        },
        servers = {
            phpactor = { enable = true },
        },
    },
}
