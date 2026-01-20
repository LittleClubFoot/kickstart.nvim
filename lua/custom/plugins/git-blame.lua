-- Git Blame - Show git blame information inline
return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  opts = {
    enabled = true,
    message_template = ' <author> • <date> • <summary>',
    date_format = '%r',
    virtual_text_column = 1,
  },
  keys = {
    { '<leader>gb', '<cmd>GitBlameToggle<cr>', desc = '[G]it [B]lame Toggle' },
    { '<leader>go', '<cmd>GitBlameOpenCommitURL<cr>', desc = '[G]it [O]pen Commit URL' },
    { '<leader>gy', '<cmd>GitBlameCopyCommitURL<cr>', desc = '[G]it Cop[y] Commit URL' },
  },
  config = function(_, opts)
    require('gitblame').setup(opts)
    -- Disable by default, toggle with <leader>gb
    vim.cmd 'GitBlameDisable'
  end,
}
