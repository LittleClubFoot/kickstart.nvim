-- Neogen - Auto-generate documentation annotations
return {
  'danymat/neogen',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  cmd = 'Neogen',
  opts = {
    enabled = true,
    snippet_engine = 'nvim',
    languages = {
      lua = { template = { annotation_convention = 'ldoc' } },
      python = { template = { annotation_convention = 'google_docstrings' } },
      rust = { template = { annotation_convention = 'rustdoc' } },
      javascript = { template = { annotation_convention = 'jsdoc' } },
      typescript = { template = { annotation_convention = 'tsdoc' } },
      typescriptreact = { template = { annotation_convention = 'tsdoc' } },
      go = { template = { annotation_convention = 'godoc' } },
    },
  },
  keys = {
    {
      '<leader>nf',
      function()
        require('neogen').generate { type = 'func' }
      end,
      desc = '[N]eogen [F]unction Doc',
    },
    {
      '<leader>nc',
      function()
        require('neogen').generate { type = 'class' }
      end,
      desc = '[N]eogen [C]lass Doc',
    },
    {
      '<leader>nt',
      function()
        require('neogen').generate { type = 'type' }
      end,
      desc = '[N]eogen [T]ype Doc',
    },
    {
      '<leader>nF',
      function()
        require('neogen').generate { type = 'file' }
      end,
      desc = '[N]eogen [F]ile Doc',
    },
  },
}
