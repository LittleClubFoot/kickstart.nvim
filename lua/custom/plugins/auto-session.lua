-- Auto-session - Automatic session management
return {
  'rmagatti/auto-session',
  lazy = false,
  opts = {
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    auto_session_suppress_dirs = { '~/', '~/Downloads', '/' },
    auto_session_use_git_branch = true,
    log_level = 'error',
    auto_session_enable_last_session = false,
    bypass_session_save_file_types = {
      'alpha',
      'dashboard',
    },
    cwd_change_handling = {
      restore_upcoming_session = true,
      pre_cwd_changed_hook = nil,
      post_cwd_changed_hook = function()
        require('lualine').refresh()
      end,
    },
    session_lens = {
      buftypes_to_ignore = {},
      load_on_setup = true,
      theme_conf = { border = true },
      previewer = false,
    },
  },
  keys = {
    { '<leader>qs', '<cmd>SessionSave<cr>', desc = 'Session Save' },
    { '<leader>qr', '<cmd>SessionRestore<cr>', desc = 'Session Restore' },
    { '<leader>qd', '<cmd>SessionDelete<cr>', desc = 'Session Delete' },
    { '<leader>qf', '<cmd>SessionSearch<cr>', desc = 'Session Find' },
  },
}
