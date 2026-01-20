-- Enhanced Window Management
-- Smart window picker and improved navigation
return {
  {
    -- Window Picker - Select windows by labels instead of cycling
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    opts = {
      hint = 'floating-big-letter',
      selection_chars = 'FJDKSLA;CMRUEIWOQP',
      show_prompt = true,
      prompt_message = 'Pick a window: ',
      filter_rules = {
        autoselect_one = true,
        -- Filter out file explorer windows
        include_current_win = false,
        bo = {
          filetype = { 'neo-tree', 'neo-tree-popup', 'notify', 'aerial' },
          buftype = { 'terminal', 'quickfix' },
        },
      },
      highlights = {
        statusline = {
          focused = {
            fg = '#ededed',
            bg = '#e35e4f',
            bold = true,
          },
          unfocused = {
            fg = '#ededed',
            bg = '#44cc41',
            bold = true,
          },
        },
        winbar = {
          focused = {
            fg = '#ededed',
            bg = '#e35e4f',
            bold = true,
          },
          unfocused = {
            fg = '#ededed',
            bg = '#44cc41',
            bold = true,
          },
        },
      },
    },
    keys = {
      {
        '<leader>w',
        function()
          local picked_window_id = require('window-picker').pick_window()
          if picked_window_id then
            vim.api.nvim_set_current_win(picked_window_id)
          end
        end,
        desc = 'Pick a [W]indow',
      },
    },
  },

  {
    -- Smart window resizing and movement
    'mrjones2014/smart-splits.nvim',
    event = 'VeryLazy',
    opts = {
      ignored_filetypes = { 'nofile', 'quickfix', 'prompt' },
      ignored_buftypes = { 'NvimTree' },
      default_amount = 3,
      at_edge = 'wrap',
      move_cursor_same_row = false,
      cursor_follows_swapped_bufs = false,
      resize_mode = {
        quit_key = '<ESC>',
        resize_keys = { 'h', 'j', 'k', 'l' },
        silent = false,
        hooks = {
          on_enter = nil,
          on_leave = nil,
        },
      },
      ignored_events = {
        'BufEnter',
        'WinEnter',
      },
      multiplexer_integration = nil,
      disable_multiplexer_nav_when_zoomed = true,
    },
    keys = {
      -- Resize windows with Ctrl+Arrow keys
      {
        '<C-Left>',
        function()
          require('smart-splits').resize_left()
        end,
        desc = 'Resize window left',
      },
      {
        '<C-Down>',
        function()
          require('smart-splits').resize_down()
        end,
        desc = 'Resize window down',
      },
      {
        '<C-Up>',
        function()
          require('smart-splits').resize_up()
        end,
        desc = 'Resize window up',
      },
      {
        '<C-Right>',
        function()
          require('smart-splits').resize_right()
        end,
        desc = 'Resize window right',
      },
      -- Move between windows with Ctrl+hjkl (non-conflicting with harpoon)
      {
        '<C-w>h',
        function()
          require('smart-splits').move_cursor_left()
        end,
        desc = 'Move to left window',
      },
      {
        '<C-w>j',
        function()
          require('smart-splits').move_cursor_down()
        end,
        desc = 'Move to window below',
      },
      {
        '<C-w>k',
        function()
          require('smart-splits').move_cursor_up()
        end,
        desc = 'Move to window above',
      },
      {
        '<C-w>l',
        function()
          require('smart-splits').move_cursor_right()
        end,
        desc = 'Move to right window',
      },
      -- Swap windows
      {
        '<leader><leader>h',
        function()
          require('smart-splits').swap_buf_left()
        end,
        desc = 'Swap window left',
      },
      {
        '<leader><leader>j',
        function()
          require('smart-splits').swap_buf_down()
        end,
        desc = 'Swap window down',
      },
      {
        '<leader><leader>k',
        function()
          require('smart-splits').swap_buf_up()
        end,
        desc = 'Swap window up',
      },
      {
        '<leader><leader>l',
        function()
          require('smart-splits').swap_buf_right()
        end,
        desc = 'Swap window right',
      },
    },
  },
}
