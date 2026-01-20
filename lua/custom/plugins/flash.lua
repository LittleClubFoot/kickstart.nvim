-- Flash - Navigate your code with search labels
-- Jump to any location on screen with 2-3 keystrokes
return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {
    -- Labels to use for jump targets
    labels = 'asdfghjklqwertyuiopzxcvbnm',
    search = {
      -- Search mode: exact, search, fuzzy
      mode = 'exact',
      -- Enable incremental search
      incremental = false,
      -- Automatically jump when there is only one match
      -- and it's not on the cursor
      multi_window = true,
    },
    label = {
      -- Enable this to show the label before the match
      before = true,
      after = true,
      -- Colorful labels
      rainbow = {
        enabled = true,
        shade = 5,
      },
    },
    modes = {
      -- Jump with `s` in normal mode
      char = {
        enabled = true,
        -- Show jump labels
        jump_labels = true,
        multi_line = true,
        -- When using jump labels, don't use these keys
        label = { exclude = 'hjkliardc' },
        keys = { 'f', 'F', 't', 'T', ';', ',' },
      },
      search = {
        enabled = true,
      },
      treesitter = {
        labels = 'abcdefghijklmnopqrstuvwxyz',
        jump = { pos = 'range' },
      },
    },
  },
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash',
    },
    {
      'S',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').treesitter()
      end,
      desc = 'Flash Treesitter',
    },
    {
      'r',
      mode = 'o',
      function()
        require('flash').remote()
      end,
      desc = 'Remote Flash',
    },
    {
      'R',
      mode = { 'o', 'x' },
      function()
        require('flash').treesitter_search()
      end,
      desc = 'Treesitter Search',
    },
    {
      '<c-s>',
      mode = { 'c' },
      function()
        require('flash').toggle()
      end,
      desc = 'Toggle Flash Search',
    },
  },
}
