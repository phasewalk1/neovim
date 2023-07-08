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
}

return plugins
