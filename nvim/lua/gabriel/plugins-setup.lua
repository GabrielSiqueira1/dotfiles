local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
    
  use 'bluz71/vim-nightfly-guicolors' -- Colorscheme

  use 'christoomey/vim-tmux-navigator' -- Tmux and split window navigation

  use 'szw/vim-maximizer' -- Maximizes and restores current window

  -- Essential plugins
  use 'tpope/vim-surround' -- Surround words -> ys, ds, cs
  use 'vim-scripts/ReplaceWithRegister' 

  -- Commentary
  use 'numToStr/Comment.nvim'

  -- Explorer
  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-lua/plenary.nvim'

  use 'xiyaowong/transparent.nvim'

  use 'kyazdani42/nvim-web-devicons'

  use 'nvim-lualine/lualine.nvim'

  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})
  use({"nvim-telescope/telescope.nvim", branch = "0.1.x"}) 

  -- autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
