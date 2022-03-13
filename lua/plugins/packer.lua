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
    use {"lewis6991/gitsigns.nvim"}
    use {"windwp/nvim-autopairs"}
    use {"phaazon/hop.nvim"}
    use {"SirVer/ultisnips"}
    use {"folke/trouble.nvim"}
    use {"nvim-treesitter/playground"}
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        {"nvim-telescope/telescope-fzy-native.nvim"},
        {"nvim-telescope/telescope-media-files.nvim"}
      }
    }
    use {"folke/lua-dev.nvim"}
    use {"hoob3rt/lualine.nvim"}
    use {"hrsh7th/nvim-compe"}
    use {"neovim/nvim-lspconfig"}
    use {"folke/tokyonight.nvim"}
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
    use {'tpope/vim-dispatch'}
    use {'tpope/vim-projectionist'}
    use {'noahfrederick/vim-composer'}
    use {'noahfrederick/vim-laravel'}
  end
)
