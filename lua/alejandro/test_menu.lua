local hydra = require "hydra"

local hint = [[
 Vim Tests
 _n_: Near test   _h_: Harpoon ^
 _f_: Current file   _s_: Test Suit ^
 _l_: Test Last  _g_: Visit
 _w_: Watch last Test  _p_: stop watch
 ^ ^                                          _<Esc>_ ^
]]
local auto_cmd_id = nil
local stopAutoCommand = function()
    if auto_cmd_id ~= nil then
        vim.api.nvim_del_autocmd(auto_cmd_id)
        auto_cmd_id = nil
    end
end
local startAutoCommand = function()
    stopAutoCommand()
    auto_cmd_id = vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        pattern = { "*.php", "*.feature", "*.yaml" },
        command = "TestLast",
    })
end

hydra {
    name = "vimtest",
    hint = hint,
    mode = "n",
    config = {
        color = "teal",
        invoke_on_body = true,
        hint = {
            border = "rounded",
            position = "bottom",
        },
    },
    body = "<leader>t",
    heads = {
        { "n", ":TestNearest<CR>" },
        { "h", ":TestNearest -strategy=harpoon<CR>" },
        { "f", ":TestFile<CR>" },
        { "s", ":TestSuit<CR>" },
        { "l", ":TestLast<CR>" },
        { "g", ":TestVisit<CR>" },
        { "w", startAutoCommand },
        { "p", stopAutoCommand },
        { "<Esc>", nil, { exit = true } },
    },
}
