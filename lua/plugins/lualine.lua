return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require("lualine").setup {
      options = {
        theme = "gruvbox",
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      extensions = { "quickfix", "fugitive" },
      sections = {
        lualine_a = { { "mode", upper = true } },
        lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
        lualine_c = { { "filename", file_status = true, path = 1 } },
        -- lualine_x = {
        --     "diagnostics",
        --     "diff",
        --     {
        --         require("noice").api.status.mode.get,
        --         cond = require("noice").api.status.mode.has,
        --         color = { fg = "#ff9e64" },
        --     },
        --     {
        --         require("lazy.status").updates,
        --         cond = require("lazy.status").has_updates,
        --         color = { fg = "ff9e64" },
        --     },
        -- },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },
      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
