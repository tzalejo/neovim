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
    { "Ll", "<cmd>Laravel<cr>" },
    { "La", "<cmd>Laravel art<cr>" },
    { "Lr", "<cmd>Laravel routes<cr>" },
    { "Lc", "<cmd>Laravel commands<cr>" },
    { "Le", "<cmd>Laravel resources<cr>" },
    { "Lp", "<cmd>Laravel panel<cr>" },
    { "Ld", "<cmd>Laravel art docs<cr>" },
    { "Lm", "<cmd>Laravel make<cr>" },

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
    environments = {
      definitions = {
        {
          name = "docker-compose",
          condition = {
            file_exists = { "docker-compose.yml" },
            executable = { "docker" },
          },
          commands = {
            compose = { "docker-compose" },
            {
              commands = { "php", "composer", "npm" },
              docker = {
                container = {
                  env = "APP_SERVICE",
                  default = "app",
                },
                exec = { "docker-compose", "exec", "-it" },
              },
            },
          },
        },
      },
    },
  },
  config = true,
}
