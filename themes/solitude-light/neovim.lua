return {
  {
    "ficcdaf/ashen.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          if vim.g.colors_name ~= "ashen" then
            return
          end
          local bg = "#e8ebee"
          local fg = "#2c3135"
          local sel = "#d0d7dc"
          vim.api.nvim_set_hl(0, "Pmenu", { fg = fg, bg = bg })
          vim.api.nvim_set_hl(0, "PmenuSel", { fg = fg, bg = sel })
          vim.api.nvim_set_hl(0, "PmenuSbar", { bg = bg })
          vim.api.nvim_set_hl(0, "PmenuThumb", { bg = sel })
          vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg, bg = bg })
          vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#8a9199", bg = bg })
          vim.api.nvim_set_hl(0, "FloatTitle", { fg = fg, bg = bg })
          vim.api.nvim_set_hl(0, "NoicePopup", { fg = fg, bg = bg })
          vim.api.nvim_set_hl(0, "NoicePopupBorder", { fg = "#8a9199", bg = bg })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ashen",
    },
  },
}