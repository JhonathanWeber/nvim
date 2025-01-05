return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 100, -- Ensure it loads first
    config = function()
      vim.cmd("colorscheme onedark")
      -- Theme opacit
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.cmd("highlight Normal   ctermbg=none guibg=none")
          vim.cmd("highlight NonText  ctermbg=none guibg=none")
          vim.cmd("highlight NormalNC  ctermbg=none guibg=none")
          vim.cmd("highlight SignColumn ctermbg=none guibg=none")
          vim.cmd("highlight LineNr     ctermbg=none guibg=none")

          vim.cmd("highlight NvimTreeNormal      ctermbg=none guibg=none")
          vim.cmd("highlight NvimTreeNormalNC    ctermbg=none guibg=none")
          vim.cmd("highlight NvimTreeEndOfBuffer ctermbg=none guibg=none")
          vim.cmd("highlight NvimTreeVertSplit   ctermbg=none guibg=none")
        end,
      })

      -- Forçar ao iniciar
      vim.cmd("highlight Normal   ctermbg=none guibg=none")
      vim.cmd("highlight NonText  ctermbg=none guibg=none")
      vim.cmd("highlight NormalNC  ctermbg=none guibg=none")
      vim.cmd("highlight SignColumn ctermbg=none guibg=none")
      vim.cmd("highlight LineNr     ctermbg=none guibg=none")

      vim.cmd("highlight NvimTreeNormal      ctermbg=none guibg=none")
      vim.cmd("highlight NvimTreeNormalNC    ctermbg=none guibg=none")
      vim.cmd("highlight NvimTreeEndOfBuffer ctermbg=none guibg=none")
      vim.cmd("highlight NvimTreeVertSplit   ctermbg=none guibg=none")
    end
  },


}
