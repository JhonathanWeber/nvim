-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.o.number = true

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File manager
  use {
    'preservim/nerdtree',
    cmd = 'NERDTreeToggle', -- Lazy load on command
    config = function()
      vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

    end
  }

  -- Fuzzy Finder
  use {
    'junegunn/fzf',
    run = './install --all',
    cmd = { 'Files', 'Rg', 'GFiles' }, -- Lazy load on these commands
  }


  -- Dracula Theme
  use {
    'dracula/vim',
    as = 'dracula',
    config = function()
      vim.cmd [[colorscheme dracula]]
    end
  }
end)

