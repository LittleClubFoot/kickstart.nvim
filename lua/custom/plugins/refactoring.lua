-- Refactoring - Automated refactoring operations
return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('refactoring').setup {
      prompt_func_return_type = {
        go = false,
        java = false,
        cpp = false,
        c = false,
        h = false,
        hpp = false,
        cxx = false,
      },
      prompt_func_param_type = {
        go = false,
        java = false,
        cpp = false,
        c = false,
        h = false,
        hpp = false,
        cxx = false,
      },
      printf_statements = {},
      print_var_statements = {},
      show_success_message = true,
    }
  end,
  keys = {
    -- Extract function supports only visual mode
    {
      '<leader>re',
      function()
        require('refactoring').refactor 'Extract Function'
      end,
      mode = 'x',
      desc = '[R]efactor [E]xtract Function',
    },
    {
      '<leader>rf',
      function()
        require('refactoring').refactor 'Extract Function To File'
      end,
      mode = 'x',
      desc = '[R]efactor Extract Function to [F]ile',
    },
    -- Extract variable supports only visual mode
    {
      '<leader>rv',
      function()
        require('refactoring').refactor 'Extract Variable'
      end,
      mode = 'x',
      desc = '[R]efactor Extract [V]ariable',
    },
    -- Inline func supports only normal mode
    {
      '<leader>ri',
      function()
        require('refactoring').refactor 'Inline Function'
      end,
      mode = 'n',
      desc = '[R]efactor [I]nline Function',
    },
    -- Inline var supports both normal and visual mode
    {
      '<leader>rv',
      function()
        require('refactoring').refactor 'Inline Variable'
      end,
      mode = { 'n', 'x' },
      desc = '[R]efactor Inline [V]ariable',
    },
    -- Extract block supports only normal mode
    {
      '<leader>rb',
      function()
        require('refactoring').refactor 'Extract Block'
      end,
      mode = 'n',
      desc = '[R]efactor Extract [B]lock',
    },
    {
      '<leader>rbf',
      function()
        require('refactoring').refactor 'Extract Block To File'
      end,
      mode = 'n',
      desc = '[R]efactor Extract [B]lock to [F]ile',
    },
    -- Prompt for refactor selection (Telescope integration)
    {
      '<leader>rr',
      function()
        require('refactoring').select_refactor()
      end,
      mode = { 'n', 'x' },
      desc = '[R]efactor [R]efactor Selection',
    },
    -- Debug print statements
    {
      '<leader>rp',
      function()
        require('refactoring').debug.printf { below = false }
      end,
      mode = 'n',
      desc = '[R]efactor Debug [P]rint',
    },
    {
      '<leader>rv',
      function()
        require('refactoring').debug.print_var { normal = true }
      end,
      mode = 'n',
      desc = '[R]efactor Debug Print [V]ar',
    },
    {
      '<leader>rv',
      function()
        require('refactoring').debug.print_var()
      end,
      mode = 'x',
      desc = '[R]efactor Debug Print [V]ar',
    },
    {
      '<leader>rc',
      function()
        require('refactoring').debug.cleanup {}
      end,
      mode = 'n',
      desc = '[R]efactor Debug [C]leanup',
    },
  },
}
