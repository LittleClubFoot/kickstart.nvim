-- Rest.nvim - REST client for testing APIs
return {
  'rest-nvim/rest.nvim',
  ft = 'http',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    result_split_horizontal = false,
    result_split_in_place = false,
    stay_in_current_window_after_split = true,
    skip_ssl_verification = false,
    encode_url = true,
    highlight = {
      enabled = true,
      timeout = 150,
    },
    result = {
      show_url = true,
      show_curl_command = false,
      show_http_info = true,
      show_headers = true,
      show_statistics = false,
      formatters = {
        json = 'jq',
        html = function(body)
          return vim.fn.system({ 'tidy', '-i', '-q', '-' }, body)
        end,
      },
    },
    jump_to_request = false,
    env_file = '.env',
    custom_dynamic_variables = {},
    yank_dry_run = true,
  },
  keys = {
    {
      '<leader>rh',
      '<Plug>RestNvim',
      desc = '[R]est [H]TTP Request',
      ft = 'http',
    },
    {
      '<leader>rp',
      '<Plug>RestNvimPreview',
      desc = '[R]est [P]review cURL',
      ft = 'http',
    },
    {
      '<leader>rl',
      '<Plug>RestNvimLast',
      desc = '[R]est [L]ast Request',
      ft = 'http',
    },
  },
}
