-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
    [".env"] = "dotenv",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
    ["%.env%..*"] = "dotenv",
    [".*%.env"] = "dotenv",
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dotenv",
  callback = function(args)
    vim.bo.commentstring = "# %s"
    pcall(vim.treesitter.start, args.buf, "bash")
  end,
})
