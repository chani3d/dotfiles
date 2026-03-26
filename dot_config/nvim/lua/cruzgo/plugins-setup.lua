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

-- To autocompile once this file is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  use "christoomey/vim-tmux-navigator"
  use "szw/vim-maximizer"
  use "numToStr/Comment.nvim" -- commenting with gc
  use "nvim-lua/plenary.nvim" -- extra lua functions
  use "nvim-tree/nvim-tree.lua" -- file explorer
  use "kyazdani42/nvim-web-devicons" -- icons
  use "nvim-lualine/lualine.nvim" -- statusline

  -- finder
  use {"nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use {"nvim-telescope/telescope.nvim", branch = "0.1.x" }

  -- autocompletion
  use "hrsh7th/nvim-cmp" -- autocompletion
  use "hrsh7th/cmp-buffer" -- allows nvim-cmp to recommend text from buffer
  use "hrsh7th/cmp-path" -- allows nvim-cmp to recommend directories when writing paths

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"

  -- LSP servers
  use "williamboman/mason.nvim" -- installing lsp servers
  use "williamboman/mason-lspconfig.nvim" -- installing lsp servers too
  use "neovim/nvim-lspconfig" -- configuration
  use "hrsh7th/cmp-nvim-lsp"
  use {"glepnir/lspsaga.nvim", branch = "main" }
  use "jose-elias-alvarez/typescript.nvim"
  use "onsails/lspkind.nvim" -- VSCode like icons to autompletion

  -- Auto-save
  use{
    "Pocco81/auto-save.nvim",
    config = function()
       require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
       }
    end,
  }

  --Treesitter
  use{
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
  }

  -- Auto closing brackets
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Gitsigns
  use "lewis6991/gitsigns.nvim"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
  end)
