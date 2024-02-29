-- -- import nvim-autopairs completion functionality safely
-- local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
-- if not cmp_autopairs_setup then
-- 	return
-- end

-- -- import nvim-cmp plugin safely (completions plugin)
-- local cmp_setup, cmp = pcall(require, "cmp")
-- if not cmp_setup then
-- 	return
-- end

-- -- make autopairs and completion work together
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

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
} -- autoclose parens, brackets, quotes, etc...
