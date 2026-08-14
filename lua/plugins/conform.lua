-- Customize conform.nvim formatters
-- https://github.com/stevearc/conform.nvim#formatters

---@type LazySpec
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      markdown = { "prettier" },
      blade = { "blade-formatter" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--ignore-path", "/dev/null" },
      },
    },
  },
}
