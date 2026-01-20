-- Aerial - Code outline sidebar with LSP and Treesitter symbols
return {
  'stevearc/aerial.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    -- Priority list of preferred backends for aerial
    backends = { 'treesitter', 'lsp', 'markdown', 'asciidoc', 'man' },

    layout = {
      -- These control the width of the aerial window
      max_width = { 40, 0.2 },
      width = nil,
      min_width = 25,

      -- Determines the default direction to open the aerial window
      default_direction = 'prefer_right',

      -- Determines where the aerial window will be opened
      placement = 'window',
    },

    -- Show box drawing characters for the tree hierarchy
    show_guides = true,

    -- Customize the characters used when show_guides = true
    guides = {
      mid_item = '├─',
      last_item = '└─',
      nested_top = '│ ',
      whitespace = '  ',
    },

    -- When you fold code with za, zo, or zc, update the aerial tree as well
    link_folds_to_tree = false,
    link_tree_to_folds = true,

    -- Fold code when you open/collapse symbols in the tree
    manage_folds = false,

    -- Automatically open aerial when entering a buffer with symbols
    open_automatic = false,

    -- Set to false to remove the default keybindings for the aerial buffer
    keymaps = {
      ['?'] = 'actions.show_help',
      ['g?'] = 'actions.show_help',
      ['<CR>'] = 'actions.jump',
      ['<2-LeftMouse>'] = 'actions.jump',
      ['<C-v>'] = 'actions.jump_vsplit',
      ['<C-s>'] = 'actions.jump_split',
      ['p'] = 'actions.scroll',
      ['<C-j>'] = 'actions.down_and_scroll',
      ['<C-k>'] = 'actions.up_and_scroll',
      ['{'] = 'actions.prev',
      ['}'] = 'actions.next',
      ['[['] = 'actions.prev_up',
      [']]'] = 'actions.next_up',
      ['q'] = 'actions.close',
      ['o'] = 'actions.tree_toggle',
      ['za'] = 'actions.tree_toggle',
      ['O'] = 'actions.tree_toggle_recursive',
      ['zA'] = 'actions.tree_toggle_recursive',
      ['l'] = 'actions.tree_open',
      ['zo'] = 'actions.tree_open',
      ['L'] = 'actions.tree_open_recursive',
      ['zO'] = 'actions.tree_open_recursive',
      ['h'] = 'actions.tree_close',
      ['zc'] = 'actions.tree_close',
      ['H'] = 'actions.tree_close_recursive',
      ['zC'] = 'actions.tree_close_recursive',
      ['zr'] = 'actions.tree_increase_fold_level',
      ['zR'] = 'actions.tree_open_all',
      ['zm'] = 'actions.tree_decrease_fold_level',
      ['zM'] = 'actions.tree_close_all',
      ['zx'] = 'actions.tree_sync_folds',
      ['zX'] = 'actions.tree_sync_folds',
    },

    -- Control which windows aerial will consider when opening
    ignore = {
      unlisted_buffers = false,
      diff_windows = true,
      filetypes = {},
      buftypes = 'special',
      wintypes = 'special',
    },

    -- Use symbol tree for folding
    manage_folds = false,

    -- When true, aerial will automatically close after jumping to a symbol
    close_on_select = false,

    -- The autocmds that trigger symbols update (not used for LSP backend)
    update_events = 'TextChanged,InsertLeave',

    -- Show symbols from current buffer in lualine
    lualine = {
      -- Customize the formatting of the aerial info in lualine
      colored = true,
      update_delay = 300,
    },
  },

  -- Keybindings
  keys = {
    { '<leader>cs', '<cmd>AerialToggle!<CR>', desc = '[C]ode [S]ymbols (Aerial)' },
    { '<leader>cn', '<cmd>AerialNavToggle<CR>', desc = '[C]ode [N]avigation (Aerial)' },
    { '{', '<cmd>AerialPrev<CR>', desc = 'Previous symbol' },
    { '}', '<cmd>AerialNext<CR>', desc = 'Next symbol' },
  },
}
