-- treesitter configuration
--[[ return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        keys = { { "<Space>", mode = { "n", "x" } }, { "<C-Space>", mode = "x" }, { "<BS>", mode = "x" } },
        cmd = {
            "TSBufDisable",
            "TSBufEnable",
            "TSBufToggle",
            "TSConfigInfo",
            "TSDisable",
            "TSEditQuery",
            "TSEditQueryUserAfter",
            "TSEnable",
            "TSInstall",
            "TSInstallFromGrammar",
            "TSInstallInfo",
            "TSInstallSync",
            "TSModuleInfo",
            "TSToggle",
            "TSUninstall",
            "TSUpdate",
            "TSUpdateSync",
        },
        event = "VeryLazy",
        opts = function(_, opts)
            local highlight_disable = {}

            opts.ensure_installed = {
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
                "luadoc",
                "vim",
                "dockerfile",
                "gitignore",
                "php",
                "phpdoc",
                "vim",
                "sql",
                "query",
            }
            opts.sync_install = true
            opts.auto_install = true
            opts.highlight = {
                enable = true,
                disable = function(_, buf)
                    if highlight_disable[buf] then
                        return highlight_disable[buf]
                    end

                    local stats = vim.loop.fs_stat(vim.api.nvim_buf_get_name(buf))

                    if stats and stats.size > 102400 then
                        highlight_disable[buf] = true

                        return highlight_disable[buf]
                    end
                end,
                additional_vim_regex_highlighting = false,
            }
            opts.indent = { enable = true }
            opts.incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Space>",
                    node_incremental = "<Space>",
                    scope_incremental = "<C-Space>",
                    node_decremental = "<BS>",
                },
            }
        end,
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            opts = function(_, opts)
                opts.textobjects = {
                    select = { lookahead = true },
                    lsp_interop = { border = require("alejandro.config-treesitter").border and "rounded" or "shadow" },
                }
            end,
        },
        keys = {
            {
                "af",
                function()
                    require("nvim-treesitter.textobjects.select").select_textobject "@function.outer"
                end,
                mode = "x",
            },
            {
                "if",
                function()
                    require("nvim-treesitter.textobjects.select").select_textobject "@function.inner"
                end,
                mode = "x",
            },
            {
                "ac",
                function()
                    require("nvim-treesitter.textobjects.select").select_textobject "@conditional.outer"
                end,
                mode = "x",
            },
            {
                "ic",
                function()
                    require("nvim-treesitter.textobjects.select").select_textobject "@conditional.inner"
                end,
                mode = "x",
            },
            {
                "al",
                function()
                    require("nvim-treesitter.textobjects.select").select_textobject "@loop.outer"
                end,
                mode = "x",
            },
            {
                "il",
                function()
                    require("nvim-treesitter.textobjects.select").select_textobject "@loop.inner"
                end,
                mode = "x",
            },
            -- { "<Tab>", function() require("nvim-treesitter.textobjects.swap").swap_next("@parameter.inner") end },
            -- { "<S-Tab>", function() require("nvim-treesitter.textobjects.swap").swap_previous("@parameter.inner") end },
            {
                "gD",
                function()
                    require("nvim-treesitter.textobjects.lsp_interop").peek_definition_code "@*.*"
                end,
            },
        },
        cmd = {
            "TSTextobjectBuiltinf",
            "TSTextobjectBuiltinF",
            "TSTextobjectBuiltint",
            "TSTextobjectBuiltinT",
            "TSTextobjectGotoNextEnd",
            "TSTextobjectGotoNextStart",
            "TSTextobjectGotoPreviousEnd",
            "TSTextobjectGotoPreviousStart",
            "TSTextobjectPeekDefinitionCode",
            "TSTextobjectRepeatLastMove",
            "TSTextobjectRepeatLastMoveNext",
            "TSTextobjectRepeatLastMoveOpposite",
            "TSTextobjectRepeatLastMovePrevious",
            "TSTextobjectSelect",
            "TSTextobjectSwapNext",
            "TSTextobjectSwapPrevious",
        },
    },
    {
        "HiPhish/nvim-ts-rainbow2",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            opts = function(_, opts)
                opts.rainbow = { enable = true }
            end,
        },
        event = "FileType",
    },
    {
        "windwp/nvim-ts-autotag",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            opts = function(_, opts)
                opts.autotag = {
                    enable = true,
                    filetypes = {
                        "html",
                        "javascript",
                        "javascriptreact",
                        "typescriptreact",
                        "markdown",
                        "php",
                        "svelte",
                        "vue",
                        "tsx",
                        "jsx",
                        "rescript",
                    },
                }
            end,
        },
        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "html,javascript,javascriptreact,typescriptreact,markdown",
                group = vim.api.nvim_create_augroup("load_nvim_ts_autotag", { clear = false }),
                callback = function(ev)
                    if package.loaded["nvim-ts-autotag"] then
                        vim.api.nvim_clear_autocmds { group = ev.group }

                        return true
                    end

                    vim.api.nvim_create_autocmd("InsertEnter", {
                        buffer = ev.buf,
                        group = ev.group,
                        callback = function()
                            vim.api.nvim_clear_autocmds { group = ev.group }

                            require("lazy").load { plugins = { "nvim-ts-autotag" } }
                        end,
                    })
                end,
            })
        end,
        config = function()
            vim.api.nvim_command "doautoall <nomodeline> FileType"
        end,
    },
    {
        "danymat/neogen",
        dependencies = { "nvim-treesitter/nvim-treesitter", "L3MON4D3/LuaSnip" },
        cmd = "Neogen",
        config = function()
            require("neogen").setup { snippet_engine = "luasnip" }
        end,
    },
} ]]
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "bash",
            "blade",
            "css",
            "dockerfile",
            "go",
            "gomod",
            "gitignore",
            "html",
            "javascript",
            "json",
            "graphql",
            "lua",
            "luadoc",
            "markdown",
            "markdown_inline",
            "nix",
            "org",
            "php",
            "phpdoc",
            "query",
            "rust",
            "sql",
            "svelte",
            "typescript",
            "tsx",
            "regex",
            "vim",
            "yaml",
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,
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
        sync_install = true,
        auto_install = true,
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn",
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
    },
    config = function(plug, config)
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "blade",
        }

        vim.filetype.add {
            pattern = {
                [".*%.blade%.php"] = "blade",
            },
        }

        require(plug.main).setup(config)
    end,
}
