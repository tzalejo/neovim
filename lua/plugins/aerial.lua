return {
  "stevearc/aerial.nvim",
  version = false, -- AstroNvim pin (^2.2) trae un bug con TSNode:start() en nvim 0.12
  opts = {
    backends = {
      ["markdown"] = { "markdown" },
      ["quarto"] = { "markdown" },
      ["php"] = { "lsp" },
    },
  },
}
