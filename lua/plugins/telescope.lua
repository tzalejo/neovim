return {
    {'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' } },
     {
    'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
            -- configure custom mappings
            --[[ defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    "vendor",
                },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
                    },
                },
            }, ]]
            -- return vim.fn.executable 'make' == 1
        end,
    },
}

-- return {
-- 	'nvim-telescope/telescope.nvim', tag = '0.1.1',
--     dependencies = { 
-- 		{ "nvim-lua/plenary.nvim" },
-- 		{ "nvim-lua/popup.nvim" },
-- 		{ "nvim-telescope/telescope-fzy-native.nvim" },
-- 		{ "nvim-tree/nvim-web-devicons" },
-- 		{ "nvim-telescope/telescope-file-browser.nvim" },
-- 		{ "nvim-telescope/telescope-ui-select.nvim" },
-- 		{
-- 			"nvim-telescope/telescope-fzf-native.nvim",
-- 			-- build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
-- 			build = "make",
-- 			dependencies = {
-- 			  "junegunn/fzf.vim",
-- 			  dependencies = {
-- 				{
-- 				  "tpope/vim-dispatch",
-- 				  cmd = { "Make", "Dispatch" },
-- 				},
-- 				{
-- 				  "junegunn/fzf",
-- 				  build = ":call fzf#install()",
-- 				}
-- 			  },
-- 			},
-- 		},
-- 	},
-- 	event = 'VeryLazy',
-- 	config = function()
-- 		require 'telescope.setup'
-- 		require 'telescope.mappings'
-- 	end
-- }


-- telescope.load_extension("fzf")
