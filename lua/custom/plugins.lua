local plugins = {
  -- NvChad CONFIG OVERRIDES!
  {
    'neovim/nvim-lspconfig',
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'lua',
        'html',
        'css',
        'typescript',
        'json',
        'c',
        'rust',
        'python',
        'go',
      }
    }
  },
  -- Custom Plugins
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      opts = require'custom.configs.dash'
      require('dashboard').setup(opts)
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}},
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'rust-analyzer',
        'pyright',
        'typescript-language-server',
      },
    },
  },
  {
    'github/copilot.vim',
    lazy = false,
  },
}

return plugins
