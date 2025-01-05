return {

  lsps = {
    servers = {
      'html',
      'cssls',
      'lua_ls',
      'biome'
    },
    settings = {
      html = {},
      cssls = {},
      lua_ls = {},
      pyright = {},
      rust_analyzer = {},
      biome = {}
    },

  },

  diagnostics = {
    -- settings = {
    -- virtual_text = false,
    signs = true,
    -- update_in_insert = false,
    -- underline = true,
    -- severity_sort = true,
    -- float = {
    -- focusable = false,
    -- style = "minimal",
    -- border = "rounded",
    -- source = "always",
    -- header = "",
    -- prefix = ""
    -- },
    signs_define = {
      DiagnosticSignError = { trxt = "", texthl = "DiagnosticSignError" },
      DiagnosticSignWarn = { text = "󰗖", texthl = "DiagnosticSignWarn" },
      DiagnosticSignInfo = { text = "", texthl = "DiagnosticSignInfo" },
      DiagnosticSignHint = { text = "󱩎", texthl = "DiagnosticSignHint" },
    },
  },
  -- languages = {
  -- javascript = {'biome'},
  -- typescript = {'biome'},
  -- typescriptreact = {'biome'},
  -- javascriptreact = {'biome'},
  -- html = {'prettier'},
  -- css = {'prettier'},
  -- }
  -- },
  debuggers = {

  },


  keymaps = {
    -- { 'n', '<C-e>',    ':NvimTreeToggle<CR>', { noremap = true, silent = true } },
    -- { "n", "<A-Up>",   ":m .-2<CR>==",        { noremap = true, silent = true } },
    -- { "n", "<A-Down>", ":m .+1<CR>==",        { noremap = true, silent = true } },

    -- { "x", "<A-Up>",   ":m '<-2<CR>gv=gv",    { noremap = true, silent = true } },
    -- { "x", "<A-Down>", ":m '>+1<CR>gv=gv",    { noremap = true, silent = true } },

  },

  autocmds = {
    -- Fechar o NvimTree se for o último buffer
    -- vim.api.nvim_create_autocmd("BufEnter", {
    --  callback = function()
    --    local buf = vim.api.nvim_get_current_buf()
    --    local bufname = vim.api.nvim_buf_get_name(buf)
    --
    --      if bufname:match("NvimTree_") and #vim.fn.getbufinfo({ buflisted = 1 }) == 1 then
    --      vim.cmd("quit")
    --   end
    -- end
    -- })
  }

}
