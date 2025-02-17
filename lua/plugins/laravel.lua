local dir_path = vim.fn.expand "~/code/plugins/laravel.nvim"
local dir_exists = vim.fn.isdirectory(dir_path) == 1

return {
  "adalessa/laravel.nvim",
  -- enabled = require("nixCatsUtils").enableForCategory "laravel",
  dir = dir_exists and dir_path or nil,
  dependencies = {
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "kevinhwang91/promise-async",
  },
  cmd = { "Laravel" },
  keys = {
    { "<leader>ll", "<cmd>Laravel<cr>" },
    { "<leader>lt", "<cmd>Laravel art<cr>" },
    { "<leader>le", "<cmd>Laravel routes<cr>" },
    { "<leader>lc", "<cmd>Laravel commands<cr>" },
    { "<leader>lo", "<cmd>Laravel resources<cr>" },
    { "<leader>lp", "<cmd>Laravel panel<cr>" },
    { "<leader>do", "<cmd>Laravel art docs<cr>" },
    { "<leader>lm", "<cmd>Laravel make<cr>" },

    -- { "<c-g>", "<cmd>Laravel view_finder<cr>" },
    -- { "<leader>ln", "<cmd>Laravel related<cr>" },
    {
      "gf",
      function()
        if require("laravel").app("gf").cursor_on_resource() then
          return "<cmd>Laravel gf<CR>"
        else
          return "gf"
        end
      end,
      noremap = false,
      expr = true,
    },
  },
  event = { "VeryLazy" },
  opts = {
    lsp_server = "phpactor",
    features = {
      route_info = {
        enable = true,
        view = "top",
      },
      override = {
        enable = true,
      },
      pickers = {
        enable = true,
        provider = "telescope",
      },
    },
  },
  config = true,
}
