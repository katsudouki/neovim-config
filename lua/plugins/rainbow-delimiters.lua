return {
  -- INFO: plugin que colore os delimitadores para facil identificacao por exemplo {{{}}}
  'HiPhish/rainbow-delimiters.nvim',
  event = 'VimEnter',
  config = function()
  local rainbow_delimiters = require('rainbow-delimiters')
  require('rainbow-delimiters.setup').setup({

    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterPurple',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },})
  end,
}
