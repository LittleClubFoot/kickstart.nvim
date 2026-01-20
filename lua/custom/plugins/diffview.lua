-- Diffview - Single tabpage interface for reviewing diffs and merge conflicts
return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = {
    'DiffviewOpen',
    'DiffviewClose',
    'DiffviewToggleFiles',
    'DiffviewFocusFiles',
    'DiffviewRefresh',
    'DiffviewFileHistory',
  },
  opts = {
    diff_binaries = false,
    enhanced_diff_hl = true,
    use_icons = true,
    show_help_hints = true,
    watch_index = true,
    icons = {
      folder_closed = '',
      folder_open = '',
    },
    signs = {
      fold_closed = '',
      fold_open = '',
      done = '✓',
    },
    view = {
      default = {
        layout = 'diff2_horizontal',
        winbar_info = false,
      },
      merge_tool = {
        layout = 'diff3_horizontal',
        disable_diagnostics = true,
        winbar_info = true,
      },
      file_history = {
        layout = 'diff2_horizontal',
        winbar_info = false,
      },
    },
    file_panel = {
      listing_style = 'tree',
      tree_options = {
        flatten_dirs = true,
        folder_statuses = 'only_folded',
      },
      win_config = {
        position = 'left',
        width = 35,
        win_opts = {},
      },
    },
    file_history_panel = {
      log_options = {
        git = {
          single_file = {
            diff_merges = 'combined',
          },
          multi_file = {
            diff_merges = 'first-parent',
          },
        },
      },
      win_config = {
        position = 'bottom',
        height = 16,
        win_opts = {},
      },
    },
    commit_log_panel = {
      win_config = {
        win_opts = {},
      },
    },
    default_args = {
      DiffviewOpen = {},
      DiffviewFileHistory = {},
    },
    hooks = {},
    keymaps = {
      disable_defaults = false,
      view = {
        { 'n', '<tab>', false },
        { 'n', '<s-tab>', false },
        { 'n', 'gf', false },
        { 'n', '<C-w><C-f>', false },
        { 'n', '<C-w>gf', false },
        ['<leader>e'] = false,
        ['<leader>b'] = false,
        ['[x'] = false,
        [']x'] = false,
      },
      diff1 = {},
      diff2 = {},
      diff3 = {
        { { 'n', 'x' }, '2do', '<Cmd>diffget //2<CR>', { desc = 'Obtain diff from left (OURS)' } },
        { { 'n', 'x' }, '3do', '<Cmd>diffget //3<CR>', { desc = 'Obtain diff from right (THEIRS)' } },
      },
      diff4 = {
        { { 'n', 'x' }, '1do', '<Cmd>diffget //1<CR>', { desc = 'Obtain diff from base' } },
        { { 'n', 'x' }, '2do', '<Cmd>diffget //2<CR>', { desc = 'Obtain diff from left (OURS)' } },
        { { 'n', 'x' }, '3do', '<Cmd>diffget //3<CR>', { desc = 'Obtain diff from right (THEIRS)' } },
      },
      file_panel = {},
      file_history_panel = {},
      option_panel = {},
      help_panel = {},
    },
  },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[G]it [D]iff View' },
    { '<leader>gD', '<cmd>DiffviewClose<cr>', desc = '[G]it [D]iff Close' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = '[G]it File [H]istory' },
    { '<leader>gH', '<cmd>DiffviewFileHistory<cr>', desc = '[G]it Project [H]istory' },
    { '<leader>gm', '<cmd>DiffviewOpen HEAD~1<cr>', desc = '[G]it [M]erge Conflicts' },
  },
}
