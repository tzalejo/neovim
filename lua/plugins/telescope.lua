local sorters, actions, previewers =
  require('telescope.sorters'), require('telescope.actions'), require('telescope.previewers')

-- Setup Telescope
require('telescope').setup({
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
    },
    layout_strategy = 'horizontal',
     layout_config = {
      vertical = { width = 0.95, anchor=2 }
    },
    initial_mode = 'insert',
    prompt_prefix = ' ❯',
    file_ignore_patterns = { '.git/*', 'node_modules', 'env/*', 'vendor' },
    color_devicons = true,
    winblend = 20,
    file_sorter = sorters.get_fzy_sorter,
    generic_sorter = sorters.get_fzy_sorter,
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<Esc>'] = actions.close,
      },
    },
  },
  extensions = {
    -- Fast, fast, really fast sorter
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    },
  },
})

-- Load Telescope extensions
require('telescope').load_extension('media_files')
require('telescope').load_extension('fzy_native')


-- Quickly change something on your settings
local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "UltiVim Config",
        cwd = "$HOME/.config/nvim"
    })
end

return M


