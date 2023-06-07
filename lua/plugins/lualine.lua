-- get lualine nightfly theme
-- local lualine_nightfly = require("lualine.themes.nightfly")

-- -- new colors for theme
-- local new_colors = {
-- 	blue = "#65D1FF",
-- 	green = "#3EFFDC",
-- 	violet = "#FF61EF",
-- 	yellow = "#FFDA7B",
-- 	black = "#000000",
-- }

-- -- change nightlfy theme colors
-- lualine_nightfly.normal.a.bg = new_colors.blue
-- lualine_nightfly.insert.a.bg = new_colors.green
-- lualine_nightfly.visual.a.bg = new_colors.violet
-- lualine_nightfly.command = {
-- 	a = {
-- 		gui = "bold",
-- 		bg = new_colors.yellow,
-- 		fg = new_colors.black, -- black
-- 	},
-- }
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {

			-- theme = "catppuccin",
			-- icons_enabled = true,
			-- globalstatus = true,
			icons_enabled = true,
			theme = lualine_nightfly, --'auto',
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = {},
			always_divide_middle = true,
			globalstatus = false,
		},
		extensions = { "quickfix", "fugitive" },
		sections = {
			lualine_a = { { "mode", upper = true } },
			lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
			lualine_c = { { "filename", file_status = true, path = 1 } },

			lualine_x = {
				"diagnostics",
				"diff",
				{
					require("lazy.status").updates,
					cond = require("lazy.status").has_updates,
					color = { fg = "ff9e64" },
				},
			},
			lualine_y = { "filetype" },
			lualine_z = { "location" },
		},
		winbar = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
		inactive_winbar = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	},
}

-- lualine.setup({
-- 	options = {
-- 		icons_enabled = true,
-- 		theme = lualine_nightfly, --'auto',
-- 		component_separators = { left = "", right = "" },
-- 		section_separators = { left = "", right = "" },
-- 		disabled_filetypes = {},
-- 		always_divide_middle = true,
-- 		globalstatus = false,
-- 	},
-- 	sections = {
-- 		lualine_a = { "mode" },
-- 		lualine_b = { "branch", "diff", "diagnostics" },
-- 		lualine_c = { "filename" },
-- 		lualine_x = { "encoding", "fileformat", "filetype" },
-- 		lualine_y = { "progress" },
-- 		lualine_z = { "location" },
-- 	},
-- 	inactive_sections = {
-- 		lualine_a = {},
-- 		lualine_b = {},
-- 		lualine_c = { "filename" },
-- 		lualine_x = { "location" },
-- 		lualine_y = {},
-- 		lualine_z = {},
-- 	},
-- 	tabline = {},
-- 	extensions = {},
-- })
