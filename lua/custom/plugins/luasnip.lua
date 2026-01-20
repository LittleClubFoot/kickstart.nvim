-- LuaSnip - Powerful snippet engine with collections
return {
  'L3MON4D3/LuaSnip',
  build = 'make install_jsregexp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end,
  },
  opts = {
    history = true,
    delete_check_events = 'TextChanged',
    region_check_events = 'CursorMoved',
  },
  keys = {
    {
      '<C-k>',
      function()
        local ls = require 'luasnip'
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end,
      mode = { 'i', 's' },
      desc = 'LuaSnip: Expand or jump forward',
    },
    {
      '<C-j>',
      function()
        local ls = require 'luasnip'
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
      mode = { 'i', 's' },
      desc = 'LuaSnip: Jump backward',
    },
    {
      '<C-l>',
      function()
        local ls = require 'luasnip'
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end,
      mode = { 'i', 's' },
      desc = 'LuaSnip: Next choice',
    },
  },
}
