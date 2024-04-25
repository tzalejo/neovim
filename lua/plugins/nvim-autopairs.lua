-- auto closing
return {
  "windwp/nvim-autopairs",
  lazy = true,
  config = true,
  --[[ config = function()
        require("nvim-autopairs").setup {
            check_ts = true, --enable tresitter
            ts_config = {
                lua = { "string" }, --dont add pairs in lua string treesitter nodes
                javascript = { "template_string" }, --don't add pairs in javascritp template_string
                java = false, --don`t check treesitter on java
            },
        }
    end, ]]
} -- a
