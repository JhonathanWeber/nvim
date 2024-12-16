-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jhon/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/jhon/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/jhon/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/jhon/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jhon/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\2\ntheme\15tokyonight\16transparent\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  nerdtree = {
    config = { "\27LJ\2\nM\0\0\3\0\5\1\v6\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4�6\0\0\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\rNERDTree\bcmd\targc\afn\bvim\0�\1\0\0\3\0\v\2\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\17�6\0\0\0009\0\1\0009\0\4\0'\2\5\0B\0\2\2\b\0\1\0X\0\n�6\0\0\0009\0\6\0009\0\a\0009\0\b\0\15\0\0\0X\1\4�6\0\0\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0\tquit\bcmd\14isTabTree\rNERDTree\6b\15b:NERDTree\vexists\6$\nwinnr\afn\bvim\2\0�\3\1\0\6\0\23\0-6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\a\0'\2\b\0005\3\n\0003\4\t\0=\4\v\3B\0\3\0016\0\0\0009\0\1\0009\0\a\0'\2\f\0005\3\14\0003\4\r\0=\4\v\3B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\0\0009\0\18\0)\1\1\0=\1\19\0006\0\0\0009\0\18\0)\1\1\0=\1\20\0006\0\0\0009\0\18\0005\1\22\0=\1\21\0K\0\1\0\1\4\0\0\v\\.pyc$\b\\~$\v\\.swp$\19NERDTreeIgnore\22NERDTreeMinimalUI\23NERDTreeShowHidden\6g\1\0\2\fnoremap\2\vsilent\2\22:NERDTreeFind<CR>\n<C-f>\1\0\1\rcallback\0\0\rBufEnter\rcallback\1\0\1\rcallback\0\0\rVimEnter\24nvim_create_autocmd\1\0\2\fnoremap\2\vsilent\2\24:NERDTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2'additional_vim_regex_hightlighting\1\venable\2\19ensure_install\1\0\3\14highlight\0\17sync_install\2\19ensure_install\0\1\6\0\0\blua\15javascript\thtml\bcss\vpython\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\ny\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<CR>\n<C-l>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/jhon/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2'additional_vim_regex_hightlighting\1\venable\2\19ensure_install\1\0\3\14highlight\0\17sync_install\2\19ensure_install\0\1\6\0\0\blua\15javascript\thtml\bcss\vpython\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\5\1\v6\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4�6\0\0\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\rNERDTree\bcmd\targc\afn\bvim\0�\1\0\0\3\0\v\2\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\17�6\0\0\0009\0\1\0009\0\4\0'\2\5\0B\0\2\2\b\0\1\0X\0\n�6\0\0\0009\0\6\0009\0\a\0009\0\b\0\15\0\0\0X\1\4�6\0\0\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0\tquit\bcmd\14isTabTree\rNERDTree\6b\15b:NERDTree\vexists\6$\nwinnr\afn\bvim\2\0�\3\1\0\6\0\23\0-6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\a\0'\2\b\0005\3\n\0003\4\t\0=\4\v\3B\0\3\0016\0\0\0009\0\1\0009\0\a\0'\2\f\0005\3\14\0003\4\r\0=\4\v\3B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\0\0009\0\18\0)\1\1\0=\1\19\0006\0\0\0009\0\18\0)\1\1\0=\1\20\0006\0\0\0009\0\18\0005\1\22\0=\1\21\0K\0\1\0\1\4\0\0\v\\.pyc$\b\\~$\v\\.swp$\19NERDTreeIgnore\22NERDTreeMinimalUI\23NERDTreeShowHidden\6g\1\0\2\fnoremap\2\vsilent\2\22:NERDTreeFind<CR>\n<C-f>\1\0\1\rcallback\0\0\rBufEnter\rcallback\1\0\1\rcallback\0\0\rVimEnter\24nvim_create_autocmd\1\0\2\fnoremap\2\vsilent\2\24:NERDTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nerdtree")
time([[Config for nerdtree]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\2\ntheme\15tokyonight\16transparent\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<CR>\n<C-l>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end