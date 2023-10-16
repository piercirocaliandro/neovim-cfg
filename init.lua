--require ("plugins")
require("set")
require("remap")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    {'nvim-telescope/telescope.nvim', tag = '0.1.4',
      dependencies = { 'nvim-lua/plenary.nvim' }},
    { "catppuccin/nvim", as = "catppuccin" },
    {'nvim-treesitter/nvim-treesitter',
    dependencies = {
        { 'windwp/nvim-ts-autotag', opts = {} },
      },
    build = ':TSUpdate'
    },
    'nvim-treesitter/playground',
    {'VonHeikemen/lsp-zero.nvim', cmd = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim'}},
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    {'nvim-tree/nvim-tree.lua', dependencies = {'nvim-tree/nvim-web-devicons'}},
    {'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons'}
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true}
})
