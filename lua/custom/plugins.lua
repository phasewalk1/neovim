local plugins = {
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
    'neovim/nvim-lspconfig',
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'github/copilot.vim',
    lazy = false,
  }
}

return plugins
