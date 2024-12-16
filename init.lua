
vim.cmd [[packadd packer.nvim]]

vim.o.number = true

-- background transparent
vim.cmd [[
	highlight Normal guibg=none ctermbg=none
	highlight NonText guibg=none ctermbg=none
]]

-- Mover linha para baixo com Alt + j ou Alt + seta para baixo
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Mover linha para cima com Alt + k ou Alt + seta para cima
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })





return require('packer').startup(function(use)
  -- Gerenciador de pacotes
  use 'wbthomason/packer.nvim'

  -- Plugins essenciais
 use {
    'preservim/nerdtree',
   -- cmd = 'NERDTreeToggle', -- Lazy load on command
    config = function()
      vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true})

 -- Abrir automaticamente o NERDTree no início, se nenhum arquivo for especificado
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        if vim.fn.argc() == 0 then
          vim.cmd('NERDTree')
        end
      end,
    })

    -- Fechar o Neovim se o NERDTree for o único buffer restante
    vim.api.nvim_create_autocmd('BufEnter', {
      callback = function()
        if vim.fn.winnr('$') == 1 and vim.fn.exists('b:NERDTree') ~= 0 and vim.b.NERDTree.isTabTree then
          vim.cmd('quit')
        end
      end,
    })
  

    -- Atalho para encontrar o arquivo atual no NERDTree
    vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

    -- Configurações adicionais do NERDTree
    vim.g.NERDTreeShowHidden = 1 -- Mostrar arquivos ocultos
    vim.g.NERDTreeMinimalUI = 1 -- Interface mais limpa
    vim.g.NERDTreeIgnore = { '\\.pyc$', '\\~$', '\\.swp$' } -- Ignorar arquivos temporários
  end
  }
  

  use {

  'nvim-treesitter/nvim-treesitter',
  run = ":TSUpdate",
  config = function()
	  require("nvim-treesitter.configs").setup({
		ensure_install = {"lua", "javascript", "html", "css", "python"},
		sync_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_hightlighting = false,
		},
		indent = {
			enable = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gun",
				node_incremental = "grn",
				scope_incremental = "grc",
				node_drecremental = "grm",
			}
		},
		autopairs = { enable = true},
	  })
	end
  }

  use 'nvim-lua/plenary.nvim'
  
  use {
	'nvim-telescope/telescope.nvim',
  	requires = { 'nvim-lua/plenary.nvim' },
	config = function()
	  vim.api.nvim_set_keymap('n', '<C-l>', ':Telescope find_files<CR>', { noremap = true, silent = true})
		
	 end
	}

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "tokyonight", -- Combine com o tema escolhido
                transparent = true,  -- Ative a transparência
            }
        })
    end
  }

--- use {
---    'dracula/vim',
---    as = 'dracula',
---    config = function()
---      vim.cmd [[colorscheme dracula]]
---    end
---  }
  

  -- Outros plugins podem ser adicionados aqui
end)
