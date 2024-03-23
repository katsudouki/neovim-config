return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup ({
      header = {'My Custom Header'},
    })
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
