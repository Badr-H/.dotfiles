-- Install package manager
-- https://github.com/folke/lazy.nvim
-- `:help lazy.nvim.txt` for more info
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
require("lazy").setup({

  -- NOTE: First, some plugins that don't require any configuration

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.

  {
    -- LSP Configuration & Plugins
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'hrsh7th/cmp-buffer' },

  },

  {
    -- Autocompletion
  },

  -- fuzzy finder (files , lsp , etc)
  -- init.lua:

  {
    'nvim-telescope/telescope.nvim',
    tag
                 = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  { 'rose-pine/neovim',          name = 'rose-pine' },
  { "catppuccin/nvim",           name = 'catppuccin' },
  { 'tiagovla/tokyodark.nvim',   name = 'tokyodark' },
  { "bluz71/vim-moonfly-colors", name = "moonfly",   lazy = false, priority = 1000 },
  { 'AlexvZyl/nordic.nvim',      name = 'nordic',    lazy = false, priority = 1000, },
  { 'Yagua/nebulous.nvim', },

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    commit = "33eb472b459f1d2bf49e16154726743ab3ca1c6d",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
  { "theprimeagen/harpoon", },
  { "mbbill/undotree" },

  { 'folke/which-key.nvim' },
  { 'lewis6991/gitsigns.nvim' },
  { 'nvim-lualine/lualine.nvim' },
  { 'lukas-reineke/indent-blankline.nvim',    main = 'ibl', opts = {}, lazy = true },
  { 'numToStr/Comment.nvim',                  opts = {} },
  { "nvim-treesitter/nvim-treesitter-context" },
  "folke/zen-mode.nvim",
  {
    {

      'goolord/alpha-nvim',
      config = function()
        require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
      end
    }
  },
  'mfussenegger/nvim-jdtls',
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    opts = {
      -- options
    },
  },
  -- {
  --   'Exafunction/codeium.vim',
  --   config = function()
  --     vim.cmd.CodeiumDisable()
  --     -- Change '<C-g>' here to any keycode you like.
  --     vim.keymap.set('i', '<C-d>', function() return vim.fn['codeium#Accept']() end, { expr = true })
  --     vim.keymap.set('i', '<c-f>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --     vim.keymap.set('i', '<c-g>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --   end,
  -- },
  -- {
  --   'windwp/nvim-autopairs',
  --   event = "InsertEnter",
  --   opts = {} -- this is equalent to setup({}) function
  -- },
  { "christoomey/vim-tmux-navigator" },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  'xiyaowong/transparent.nvim',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
  , { 'Everblush/nvim',            name = 'everblush' },
  'navarasu/onedark.nvim'

}, {})
