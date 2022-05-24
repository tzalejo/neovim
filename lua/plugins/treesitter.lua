require "nvim-treesitter.configs".setup {
  ensure_installed = "bash, css, dockerfile, hjson, http, html, graphql, javascript, json, json5, lua, make, php, phpdoc, python, scss, slint, solidity, typescript, vue, vim, yaml ",
  highlight = {
    enable = true
  },
  indent = {enable = true},
  autotag = {enable = true},
  incremental_selection = {enable = true},
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?"
    }
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"}
  }
}
