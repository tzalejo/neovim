-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  main = "nvim-treesitter.configs",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects", lazy = true },
  },
  event = "VeryLazy",
  opts = function(_, opts)
    local astrocore = require "astrocore"
    if astrocore.is_available "mason.nvim" then require("lazy").load { plugins = { "mason.nvim" } } end
    opts = astrocore.extend_tbl(opts, {
      auto_install = vim.fn.executable "tree-sitter" == 1, -- only enable auto install if `tree-sitter` cli is installed
      highlight = { enable = true },
      incremental_selection = { enable = true },
      indent = { enable = true },
      -- textobjects = {
      --   select = {
      --     enable = true,
      --     lookahead = true,
      --     keymaps = {
      --       ["af"] = { query = "@function.outer", desc = "around function " },
      --       ["if"] = { query = "@function.inner", desc = "inside function " },
      --       ["ac"] = { query = "@conditional.outer", desc = "around conditional" },
      --       ["ic"] = { query = "@conditional.inner", desc = "inside conditional" },
      --       ["al"] = { query = "@block.outer", desc = "around block" },
      --       ["il"] = { query = "@block.inner", desc = "inside block" },
      --     },
      --   },
      -- },
    })
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = astrocore.list_insert_unique(opts.ensure_installed, {
      "javascript",
      "typescript",
      "bash",
      "markdown",
      "markdown_inline",
      "query",
      "vim",
      "vimdoc",
      "css",
      "php",
      "phpdoc",
    })
  end,
  config = function(_, opts)
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
      vim.filetype.add {
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      },
    }

    require("nvim-treesitter.configs").setup(opts)
  end,
}
