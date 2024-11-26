-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    end,
  },
  'tpope/vim-rhubarb',
  {
    'theprimeagen/harpoon',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'
      vim.keymap.set('n', '<leader>a', mark.add_file)
      vim.keymap.set('n', '<leader>fh', ui.toggle_quick_menu)
      vim.keymap.set('n', '<C-h>', function()
        ui.nav_file(1)
      end)
      vim.keymap.set('n', '<C-t>', function()
        ui.nav_file(2)
      end)
      vim.keymap.set('n', '<C-n>', function()
        ui.nav_file(3)
      end)
      vim.keymap.set('n', '<C-s>', function()
        ui.nav_file(4)
      end)
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end,
  },
  { 'bluz71/vim-moonfly-colors', name = 'moonfly', lazy = false, priority = 1000 },
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup { style = 'warm', transparent = true }
    end,
  },
  { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
{
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function()
      require('flutter-tools').setup {
        flutter_path = 'C:/src/flutter/bin/flutter.bat', --     ENABLE ONLY ON WINDOWS!!
      }
    end,
  },
  'xiyaowong/transparent.nvim',
  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    config = function()
      require('no-neck-pain').setup {
        width = 85,
        autocmds = { enableOnVimEnter = false },
        buffers = {
          wo = {
            fillchars = 'eob: ',
            winbar = '%r',
          },
        },
      }
    end,
  },
  { 'nvim-treesitter/nvim-treesitter-context' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'iceberg_dark',
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_x = {
            {
              'filetype',
            },
          },
          lualine_c = {
            {
              'filename',
              symbols = {
                modified = '●',
              },
            },
          },
        },
      }
    end,
  },
  {
    'nvim-java/nvim-java',
  },
}
