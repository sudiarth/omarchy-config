return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      styles = {
        floats = "dark",
        sidebars = "dark",
      },
      colors = {
        bg = "#e8ebee",
        dark_bg = "#d0d5db",
        darker_bg = "#c2c8cf",
        lighter_bg = "#f0f2f4",

        fg = "#2c3135",
        dark_fg = "#1a1e21",
        light_fg = "#4a5055",
        bright_fg = "#5c6369",
        muted = "#7a828a",

        red = "#8a6050",
        yellow = "#7a7560",
        orange = "#8a6050",
        green = "#5a7060",
        cyan = "#607070",
        blue = "#506878",
        magenta = "#706070",
        brown = "#7a7560",

        bright_red = "#b84535",
        bright_yellow = "#8a7a55",
        bright_green = "#3a6050",
        bright_cyan = "#457070",
        bright_blue = "#3a5868",
        bright_magenta = "#704060",

        accent = "#5a6370",
        cursor = "#1a1e21",
        foreground = "#2c3135",
        background = "#e8ebee",
        selection = "#bac2ca",
        selection_foreground = "#1a1e21",
        selection_background = "#bac2ca",
      },
      on_highlights = function(hl, c)
        local popup_bg = "#d0d5db"
        local popup_fg = "#1a1e21"
        local popup_border = "#8a9199"
        local sel_bg = "#bac2ca"

        hl.Pmenu = { bg = popup_bg, fg = popup_fg }
        hl.PmenuSel = { bg = sel_bg, fg = popup_fg, bold = true }
        hl.PmenuMatch = { bg = popup_bg, fg = c.blue, bold = true }
        hl.PmenuMatchSel = { bg = sel_bg, fg = c.blue, bold = true }
        hl.PmenuSbar = { bg = popup_bg }
        hl.PmenuThumb = { bg = "#8a9199" }

        hl.NormalFloat = { bg = popup_bg, fg = popup_fg }
        hl.FloatBorder = { bg = popup_bg, fg = popup_border }
        hl.FloatTitle = { bg = popup_bg, fg = popup_fg, bold = true }

        hl.WhichKeyFloat = { bg = popup_bg, fg = popup_fg }
        hl.SnacksNormal = { bg = popup_bg, fg = popup_fg }
        hl.SnacksBorder = { bg = popup_bg, fg = popup_border }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
