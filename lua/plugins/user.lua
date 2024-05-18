-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==
  {
    "noice.nvim",
    opts = {
      cmdline = {
        enabled = true,
      },
      messages = {
        enabled = false,
      },
      popupmenu = {
        enabled = false,
      },
      notify = {
        enabled = false,
      },
      lsp = {
        progress = {
          enabled = false,
        },
        hover = {
          enabled = true,
        },
        signature = {
          enabled = false,
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
        hover = {
          border = {
            style = "rounded",
            padding = { 0, 2 },
          },
        },
      },
    },
  },
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
      -- opts = function(_, opts)
      --   -- customize the dashboard header
      --   opts.section.header.val = {
      --     " █████  ███████ ████████ ██████   ██████",
      --     "██   ██ ██         ██    ██   ██ ██    ██",
      --     "███████ ███████    ██    ██████  ██    ██",
      --     "██   ██      ██    ██    ██   ██ ██    ██",
      --     "██   ██ ███████    ██    ██   ██  ██████",
      --     " ",
      --     "    ███    ██ ██    ██ ██ ███    ███",
      --     "    ████   ██ ██    ██ ██ ████  ████",
      --     "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
      --     "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
      --     "    ██   ████   ████   ██ ██      ██",
      --   }
      --   return opts
      -- end,
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   {
  --     "saadparwaiz1/cmp_luasnip",
  --     "rafamadriz/friendly-snippets",
  --   },
  --   version = "v2.*",
  --   build = "make install_jsregexp",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     -- local luasnip = require "luasnip"
  --     -- luasnip.filetype_extend("javascript", { "javascriptreact" })
  --     -- luasnip.filetype_extend("typescript", { "javascriptreact" })
  --     -- load snippets paths
  --     require("luasnip.loaders.from_vscode").lazy_load {}
  --   end,
  -- },
  {
    -- multi seleccion
    "mg979/vim-visual-multi",
  },
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  {
    "tpope/vim-fugitive",
    keys = {
      -- { "<leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch" },
      { "<leader>gl", ":Git pull<cr>", desc = "Git pull" },
      { "<leader>gs", ":Git push<cr>", desc = "Git push" },
      -- { "<leader>gdh", ":diffget //2<cr>", desc = "Git diff grab from left" },
      -- { "<leader>gdl", ":diffget //3<cr>", desc = "Git diff grab from right" },
    },
    cmd = { "G", "Git" },
  },
}
