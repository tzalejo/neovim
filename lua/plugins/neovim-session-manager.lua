return { -- TODO: REMOVE neovim-session-manager with AstroNvim v4
  "Shatur/neovim-session-manager",
  event = "BufWritePost",
  cmd = "SessionManager",
  enabled = vim.g.resession_enabled ~= true,
}
