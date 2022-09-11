-- vim.cmd [[packadd packer.nvim]]
-- vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require("packer").startup(
  function()
    -- plugin para usar con laravel
    use({"adalessa/laravel.nvim",
    requires = {
        { "nvim-lua/plenary.nvim" },
        { "rcarriga/nvim-notify" },
        { "nvim-telescope/telescope.nvim" },
      },
    })


    use {"wbthomason/packer.nvim"}
    use {"UltiRequiem/nvim-snippets"}
    use {"kyazdani42/nvim-tree.lua",
      requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      tag = 'nightly'-- opcional, actualizado cada semana.
    }
    -- Para resaltar y buscar comentarios de tareas pendientes como TODO:, en su base HACKde BUGcódigo.
    -- FIX: otro error de prueba
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

    use {"terrortylor/nvim-comment"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}
    use {"glepnir/dashboard-nvim"}
    use {"lewis6991/gitsigns.nvim"}
    use {"windwp/nvim-autopairs"}
    use {"phaazon/hop.nvim"}
    use {"SirVer/ultisnips"}

    --  lista para mostrar diagnósticos, referencias, resultados de telescopios,
    --  soluciones rápidas y listas de ubicaciones para ayudarlo a resolver
    --  todos los problemas que está causando su código.
    use {"folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- -- or leave it empty to use the default settings
        -- -- refer to the configuration section below
      }
    end
    }

    use {"nvim-treesitter/playground"}

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        { 'nvim-lua/plenary.nvim'},
        { 'nvim-lua/popup.nvim' },
        { 'nvim-telescope/telescope-fzy-native.nvim'},
        { 'kyazdani42/nvim-web-devicons'},
        { 'nvim-telescope/telescope-file-browser.nvim'}
      }
    }

    use {'nvim-telescope/telescope-dap.nvim'}
    use {'rcarriga/nvim-notify'}
    use {'nvim-telescope/telescope-ui-select.nvim'}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    ---

    use {
        'leoluz/nvim-dap-go',
        requires = {
            'rcarriga/nvim-dap-ui',
            'mfussenegger/nvim-dap',
            "Pocco81/DAPInstall.nvim",
            'leoluz/nvim-dap-go',
        }
    }

    use {
      "ThePrimeagen/git-worktree.nvim",
      config = function()
        require("git-worktree").setup {}
      end,
    }


    use {"folke/lua-dev.nvim"}
    use {'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Nuevo
    use {"hrsh7th/nvim-compe"}
    use {"neovim/nvim-lspconfig"}

    use('lukas-reineke/indent-blankline.nvim') -- Adds a | to show indentation levels
    use({ 'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }) -- tabline
    use('stevearc/dressing.nvim') -- overrides the default vim input to provide better visuals
    use {"folke/tokyonight.nvim"}
    use({ 'sindrets/diffview.nvim', requires = { 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons' } }) -- creates a tab focused on diff view and git history
            use({
            'wyattjsmith1/weather.nvim',
            requires = {
                'nvim-lua/plenary.nvim',
            },
        })
    use('j-hui/fidget.nvim') -- status progress for lsp servers

    use {"nvim-treesitter/nvim-treesitter"}
    use {"ahmedkhalf/lsp-rooter.nvim"}


    --Comentario
    use {"b3nj5m1n/kommentary"}

    -- Redimensionar
    use {'dm1try/golden_size'}

    -- Para realizar reemplazo de caracteres
    use {"tpope/vim-surround"}

    -- javascript
    -- Javascript Bundle
    use {'jelera/vim-javascript-syntax'}
    use {'pangloss/vim-javascript'}

    -- php
    --- PHP Bundle
    use {'stephpy/vim-php-cs-fixer'}
    use {'rayburgemeestre/phpfolding.vim'}

    -- laravel
    use {'noahfrederick/vim-laravel'}
    use {'tpope/vim-projectionist'}
    use {'noahfrederick/vim-composer'}
    use {'tpope/vim-dispatch'}

    -- coc
    use {'neoclide/coc.nvim', branch = 'release'}

    -- para mejor los tiempos de carga
    use {'lewis6991/impatient.nvim'}

    -- html
    -- HTML Bundle
    use {'hail2u/vim-css3-syntax'}
    use {'gko/vim-coloresque'}
    use {'tpope/vim-haml'}
    use {'mattn/emmet-vim'}

    use {'rhysd/git-messenger.vim'}
  end
)
