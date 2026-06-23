return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      find_command = {
        "rg",
        "--files",
        "--hidden",
        "-no-ignore",
        "--glob",
        "!**/.git/*",
      },
    },
  },
}
