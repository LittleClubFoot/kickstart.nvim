-- Lualine - Powerful statusline (replaces mini.statusline)
return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local icons = {
      diagnostics = {
        Error = ' ',
        Warn = ' ',
        Hint = ' ',
        Info = ' ',
      },
      git = {
        added = ' ',
        modified = ' ',
        removed = ' ',
      },
    }

    return {
      options = {
        theme = 'auto',
        globalstatus = true,
        disabled_filetypes = { statusline = { 'dashboard', 'alpha' } },
        component_separators = '|',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = {
          'branch',
          {
            'diff',
            symbols = icons.git,
          },
        },
        lualine_c = {
          {
            'diagnostics',
            symbols = icons.diagnostics,
          },
          { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
          { 'filename', path = 1, symbols = { modified = '  ', readonly = '', unnamed = '' } },
        },
        lualine_x = {
          {
            function()
              local ok, noice = pcall(require, 'noice')
              if ok then
                return noice.api.status.command.get()
              end
              return ''
            end,
            cond = function()
              local ok, noice = pcall(require, 'noice')
              return ok and noice.api.status.command.has()
            end,
            color = { fg = '#ff9e64' },
          },
          {
            function()
              local ok, noice = pcall(require, 'noice')
              if ok then
                return noice.api.status.mode.get()
              end
              return ''
            end,
            cond = function()
              local ok, noice = pcall(require, 'noice')
              return ok and noice.api.status.mode.has()
            end,
            color = { fg = '#ff9e64' },
          },
          {
            require('lazy.status').updates,
            cond = require('lazy.status').has_updates,
            color = { fg = '#ff9e64' },
          },
        },
        lualine_y = {
          { 'progress', separator = ' ', padding = { left = 1, right = 0 } },
          { 'location', padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          { 'searchcount' },
          { 'selectioncount' },
          {
            function()
              return ' ' .. os.date '%R'
            end,
            separator = { right = '' },
            left_padding = 2,
          },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = { 'neo-tree', 'lazy', 'trouble', 'aerial', 'toggleterm' },
    }
  end,
}
