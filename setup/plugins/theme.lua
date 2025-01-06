return {
  {
    "folke/tokyonight.nvim",
    priority = 100,
    config = function()
      -- Configuração do tema
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        terminal_colors = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        }
      })

      -- Ativar o Tema
      vim.cmd("colorscheme tokyonight")

            -- Aplicar transparência
      local function apply_transparency()
        local highlights = {
          "Normal",
          "NonText",
          "NormalNC",
          "SignColumn",
          "LineNr",
          "NvimTreeNormal",
          "NvimTreeNormalNC",
          "NvimTreeEndOfBuffer",
          "NvimTreeVertSplit",
        }
        for _, group in ipairs(highlights) do
          vim.cmd(string.format("highlight %s ctermbg=none guibg=none", group))
        end
      end

      -- Eventos para reaplicar ajustes
      vim.api.nvim_create_autocmd({ "ColorScheme", "VimResized" }, {
        pattern = "*",
        callback = function()
          apply_transparency()
        end,
      })

      -- Aplicar ao iniciar
      apply_transparency()
    end,
  },
}
