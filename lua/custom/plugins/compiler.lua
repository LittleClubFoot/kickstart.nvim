-- Compiler.nvim - Quick compiler and build configurations
return {
  'Zeioth/compiler.nvim',
  cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
  dependencies = { 'stevearc/overseer.nvim' },
  opts = {},
  keys = {
    { '<leader>cc', '<cmd>CompilerOpen<cr>', desc = '[C]ompiler Open' },
    { '<leader>cr', '<cmd>CompilerToggleResults<cr>', desc = '[C]ompiler Toggle [R]esults' },
    { '<leader>cR', '<cmd>CompilerRedo<cr>', desc = '[C]ompiler [R]edo' },
  },
}
