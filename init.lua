-- ~/.config/nvim/init.lua

-- Adicionar o caminho 'lua' ao runtime path, se necessário
-- vim.cmd('set runtimepath+=~/.config/nvim/lua')

-- Carregar configurações dos plugins
require('lazy_setup')
require('reset')
require('lsps')
require('diagnostics')
require('keymaps')
require('autocmds')


vim.cmd("set colorcolumn=")
vim.cmd("highlight WinSeparator guibg=none guifg=none")
vim.cmd("highlight VertSplit guibg=none guifg=none")
vim.cmd("highlight StatusLine guibg=none guifg=none")
vim.cmd("highlight StatusLineNC guibg=none guifg=none")


vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("nvim-tree.api").tree.open()
  end
})


-- Configuração do clipboard
vim.g.clipboard = {
  name = 'xclip',
  copy = {
    ['+'] = 'xclip -selection clipboard',
    ['*'] = 'xclip -selection clipboard',
  },
  paste = {
    ['+'] = 'xclip -selection clipboard -o',
    ['*'] = 'xclip -selection clipboard -o',
  },
  cache_enabled = 0,
}

-- Mover linha para baixo
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Mover linha para cima
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
