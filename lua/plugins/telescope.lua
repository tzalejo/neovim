return {
    'nvim-telescope/telescope.nvim',
    dependencies =  {
    { "nvim-lua/plenary.nvim" },
    { "nvim-lua/popup.nvim" },
    { "nvim-telescope/telescope-fzy-native.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      dependencies = {
        "junegunn/fzf.vim",
        dependencies = {
          {
            "tpope/vim-dispatch",
            cmd = { "Make", "Dispatch" },
          },
          {
            "junegunn/fzf",
            build = ":call fzf#install()",
          }
        },
      },
    },
  },    config = function()
        require 'alejandro.telescope.mappings'
    end
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
