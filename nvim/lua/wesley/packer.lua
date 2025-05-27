-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- For reference if you are having a tree sitter error run `:TSUpdate`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'rstacruz/vim-closer'
  use {'joeveiga/ng.nvim'}

  use {'styled-components/vim-styled-components'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})   
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use('f-person/git-blame.nvim')
use('christoomey/vim-tmux-navigator')
use('sbdchd/neoformat')
use('joerdav/templ.vim')
use('ggandor/leap.nvim')
use{
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
  "supermaven-inc/supermaven-nvim",
  config = function() 
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-v>",
      },
      disable_inline_suggestion = false,
      color = {
        sugestion_color = "#EC7EE2",
        cterm = 244,
      },
    })
  end,
}
end)
