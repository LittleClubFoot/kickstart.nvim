-- ToggleTerm - Better terminal management
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    auto_scroll = true,
    float_opts = {
      border = 'curved',
      winblend = 0,
      highlights = {
        border = 'Normal',
        background = 'Normal',
      },
    },
    winbar = {
      enabled = false,
      name_formatter = function(term)
        return term.name
      end,
    },
  },
  config = function(_, opts)
    require('toggleterm').setup(opts)

    -- Custom terminal functions
    local Terminal = require('toggleterm.terminal').Terminal

    -- Lazygit terminal
    local lazygit = Terminal:new {
      cmd = 'lazygit',
      dir = 'git_dir',
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
      on_open = function(term)
        vim.cmd 'startinsert!'
        vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', { noremap = true, silent = true })
      end,
    }

    function _lazygit_toggle()
      lazygit:toggle()
    end

    -- Python REPL
    local python = Terminal:new {
      cmd = 'python3',
      direction = 'float',
      hidden = true,
    }

    function _python_toggle()
      python:toggle()
    end

    -- Node REPL
    local node = Terminal:new {
      cmd = 'node',
      direction = 'float',
      hidden = true,
    }

    function _node_toggle()
      node:toggle()
    end

    -- Htop
    local htop = Terminal:new {
      cmd = 'htop',
      direction = 'float',
      hidden = true,
    }

    function _htop_toggle()
      htop:toggle()
    end
  end,
  keys = {
    { '<C-\\>', '<cmd>ToggleTerm<cr>', desc = 'Toggle Terminal', mode = { 'n', 't' } },
    { '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', desc = '[T]erminal [F]loat' },
    { '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', desc = '[T]erminal [H]orizontal' },
    { '<leader>tv', '<cmd>ToggleTerm direction=vertical<cr>', desc = '[T]erminal [V]ertical' },
    { '<leader>tg', '<cmd>lua _lazygit_toggle()<cr>', desc = '[T]erminal Lazy[g]it' },
    { '<leader>tp', '<cmd>lua _python_toggle()<cr>', desc = '[T]erminal [P]ython' },
    { '<leader>tn', '<cmd>lua _node_toggle()<cr>', desc = '[T]erminal [N]ode' },
    { '<leader>tH', '<cmd>lua _htop_toggle()<cr>', desc = '[T]erminal [H]top' },
  },
}
