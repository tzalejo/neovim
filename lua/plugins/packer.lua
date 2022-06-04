-- vim.cmd [[packadd packer.nvim]]
-- vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require("packer").startup(
  function()
    use {"wbthomason/packer.nvim"}
    use {"UltiRequiem/nvim-snippets"}
    use {"kyazdani42/nvim-tree.lua",
      requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
    }
    use {"folke/todo-comments.nvim"}
    use {"terrortylor/nvim-comment"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}
    use {"glepnir/dashboard-nvim"}
    use {"lewis6991/gitsigns.nvim" , requires = { 'nvim-lua/plenary.nvim' }}
    use {"windwp/nvim-autopairs"}
    use {"phaazon/hop.nvim"}
    use {"SirVer/ultisnips"}
    use {"folke/trouble.nvim"}
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
    use { 'nvim-lualine/lualine.nvim',
         requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

    -- use {"hoob3rt/lualine.nvim"}
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

  end
)
