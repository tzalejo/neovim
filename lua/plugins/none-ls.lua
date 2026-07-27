-- none-ls disabled: replaced by conform.nvim (community.lua).
-- AstroNvim ships none-ls by default, so disable it explicitly here.

---@type LazySpec
return {
  { "nvimtools/none-ls.nvim", enabled = false },
  { "jay-babu/mason-null-ls.nvim", enabled = false },
}
