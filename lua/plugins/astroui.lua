-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = function() -- this table overrides highlights in all themes
        local get_hlgroup = require("astroui").get_hlgroup
        -- get highlights from highlight groups
        local normal = get_hlgroup "Normal"
        local fg, bg = normal.fg, normal.bg
        local bg_alt = get_hlgroup("Visual").bg
        local green = get_hlgroup("String").fg
        local red = get_hlgroup("Error").fg
        -- return a table of highlights for telescope based on
        -- colors gotten from highlight groups
        return {
          -- TelescopeBorder = { fg = bg_alt, bg = bg },
          TelescopeNormal = { bg = bg },
          -- TelescopePreviewBorder = { fg = bg, bg = bg },
          TelescopePreviewNormal = { bg = bg },
          TelescopePreviewTitle = { fg = bg, bg = green },
          -- TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
          TelescopePromptNormal = { fg = fg, bg = bg_alt },
          TelescopePromptPrefix = { fg = red, bg = bg_alt },
          TelescopePromptTitle = { fg = bg, bg = red },
          -- TelescopeResultsBorder = { fg = bg, bg = bg },
          TelescopeResultsNormal = { bg = bg },
          TelescopeResultsTitle = { fg = bg, bg = bg },
        }
        -- Normal = { bg = "#000000" },
      end,
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      ActiveLSP = "",
      ActiveTS = "",
      ArrowLeft = "",
      ArrowRight = "",
      BufferClose = "󰅖",
      DapBreakpoint = "",
      DapBreakpointCondition = "",
      DapBreakpointRejected = "",
      DapLogPoint = ".>",
      DapStopped = "󰁕",
      DefaultFile = "󰈙",
      Diagnostic = "󰒡",
      DiagnosticError = "",
      DiagnosticHint = "󰌵",
      DiagnosticInfo = "󰋼",
      DiagnosticWarn = "",
      Ellipsis = "…",
      FileModified = "",
      FileReadOnly = "",
      FoldClosed = "",
      FoldOpened = "",
      FoldSeparator = " ",
      FolderClosed = "",
      FolderEmpty = "",
      FolderOpen = "",
      Git = "󰊢",
      GitAdd = "",
      GitBranch = "",
      GitChange = "",
      GitConflict = "",
      GitDelete = "",
      GitIgnored = "◌",
      GitRenamed = "➜",
      GitStaged = "✓",
      GitUnstaged = "✗",
      GitUntracked = "★",
      LSPLoaded = "",
      LSPLoading1 = "",
      LSPLoading2 = "󰀚",
      LSPLoading3 = "",
      MacroRecording = "",
      Paste = "󰅌",
      Search = "",
      Selected = "❯",
      Spellcheck = "󰓆",
      TabClose = "󰅙",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
