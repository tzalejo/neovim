-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  opts = function(_, opts)
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "javascript",
      "typescript",
      "tsx",
      "bash",
      "markdown",
      "markdown_inline",
      "query",
      "vim",
      "vimdoc",
      "css",
      "php",
      "phpdoc",
      "json",
      "gitignore",
      "lua",
      "sql",
      "dockerfile",
      "html",
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
