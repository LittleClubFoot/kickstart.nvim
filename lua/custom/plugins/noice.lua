-- Noice.nvim - Modern UI for messages, cmdline, and popups
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  opts = {
    lsp = {
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
    },
    routes = {
      {
        filter = {
          event = 'msg_show',
          any = {
            { find = '%d+L, %d+B' },
            { find = '; after #%d+' },
            { find = '; before #%d+' },
          },
        },
        view = 'mini',
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = false,
    },
  },
  keys = {
    {
      '<leader>sn',
      function()
        require('noice').cmd 'history'
      end,
      desc = '[S]earch [N]oice Message History',
    },
    {
      '<leader>nl',
      function()
        require('noice').cmd 'last'
      end,
      desc = '[N]oice [L]ast Message',
    },
    {
      '<leader>nd',
      function()
        require('noice').cmd 'dismiss'
      end,
      desc = '[N]oice [D]ismiss',
    },
  },
}
