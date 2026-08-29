return {
  {
    "ficcdaf/ashen.nvim",
    after = function()
      local function override_pmenu()
        local bg = "#e8ebee"
        vim.api.nvim_set_hl(0, "Pmenu", { fg = "#2c3135", bg = bg })
        vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#2c3135", bg = "#d0d7dc" })
        vim.api.nvim_set_hl(0, "PmenuSbar", { bg = bg })
        vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#d0d7dc" })
      end
      override_pmenu()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = override_pmenu,
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