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

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
