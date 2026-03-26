-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  {
    "williamboman/mason.nvim",
    version = "^1.0.0",
  },
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    version = "^1.0.0",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(
        function(s) return s ~= "docker-language-server" end,
        opts.ensure_installed or {}
      )
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- add more arguments for adding more language servers
        "lua_ls",
        "eslint",
        "intelephense",
        "ts_ls",
        "tailwindcss",
        "dockerls",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- add more arguments for adding more null-ls sources
        "prettier",
        "stylua",
        "blade-formatter",
        "php-cs-fixer",
        "sql-formatter",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- add more arguments for adding more debuggers
        "php-debug-adapter",
      })
    end,
  },
}
