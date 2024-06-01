return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-h>", "<cmd><C-h>TmuxNavigateLeft<cr>" },
    { "<c-j>", "<cmd><C-j>TmuxNavigateDown<cr>" },
    { "<c-k>", "<cmd><C-k>TmuxNavigateUp<cr>" },
    { "<c-l>", "<cmd><C-l>TmuxNavigateRight<cr>" },
  },
}
