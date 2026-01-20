-- Nvim-notify - Fancy notification manager
return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
  opts = {
    timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
    stages = 'fade_in_slide_out',
    render = 'compact',
    background_colour = '#000000',
    fps = 30,
    icons = {
      ERROR = '',
      WARN = '',
      INFO = '',
      DEBUG = '',
      TRACE = '✎',
    },
    level = 2,
    minimum_width = 50,
    top_down = true,
  },
  config = function(_, opts)
    local notify = require 'notify'
    notify.setup(opts)
    vim.notify = notify
  end,
  keys = {
    {
      '<leader>un',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss [N]otifications',
    },
  },
}
