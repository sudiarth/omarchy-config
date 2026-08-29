return {
  {
    "ficcdaf/ashen.nvim",
    opts = {
      hl = {
        force_override = {
          Pmenu = { fg = "#2c3135", bg = "#e8ebee" },
          PmenuSel = { fg = "#2c3135", bg = "#d0d7dc" },
          PmenuSbar = { fg = "NONE", bg = "#e8ebee" },
          PmenuThumb = { fg = "NONE", bg = "#d0d7dc" },
          NormalFloat = { fg = "#2c3135", bg = "#e8ebee" },
          FloatBorder = { fg = "#8a9199", bg = "#e8ebee" },
          FloatTitle = { fg = "#2c3135", bg = "#e8ebee" },
          NoicePopup = { fg = "#2c3135", bg = "#e8ebee" },
          NoicePopupBorder = { fg = "#8a9199", bg = "#e8ebee" },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ashen",
    },
  },
}