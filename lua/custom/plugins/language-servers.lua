-- Language-specific LSP servers and tools
-- This extends the default LSP configuration with additional language support
return {
  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      -- Extend the servers table with additional language servers
      opts.servers = opts.servers or {}

      -- Merge additional servers with existing configuration
      local additional_servers = {
        -- Python
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                diagnosticMode = 'workspace',
                useLibraryCodeForTypes = true,
                typeCheckingMode = 'basic',
              },
            },
          },
        },

        -- TypeScript/JavaScript
        ts_ls = {},

        -- Go
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                shadow = true,
              },
              staticcheck = true,
              gofumpt = true,
            },
          },
        },

        -- Rust
        rust_analyzer = {
          settings = {
            ['rust-analyzer'] = {
              checkOnSave = {
                command = 'clippy',
              },
              cargo = {
                allFeatures = true,
              },
            },
          },
        },

        -- C/C++
        clangd = {
          cmd = {
            'clangd',
            '--background-index',
            '--clang-tidy',
            '--header-insertion=iwyu',
            '--completion-style=detailed',
            '--function-arg-placeholders',
            '--fallback-style=llvm',
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },

        -- HTML
        html = {},

        -- CSS
        cssls = {},

        -- JSON
        jsonls = {},

        -- YAML
        yamlls = {},

        -- Bash
        bashls = {},

        -- Docker
        dockerls = {},

        -- Markdown
        marksman = {},

        -- Tailwind CSS
        tailwindcss = {},
      }

      for server, config in pairs(additional_servers) do
        opts.servers[server] = config
      end

      return opts
    end,
  },

  -- Mason tool installer - ensure language servers and tools are installed
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        -- LSP Servers
        'lua-language-server',
        'pyright',
        'typescript-language-server',
        'gopls',
        'rust-analyzer',
        'clangd',
        'html-lsp',
        'css-lsp',
        'json-lsp',
        'yaml-language-server',
        'bash-language-server',
        'dockerfile-language-server',
        'marksman',
        'tailwindcss-language-server',

        -- Formatters
        'stylua',
        'black',
        'isort',
        'prettier',
        'gofumpt',
        'shfmt',

        -- Linters
        'pylint',
        'eslint_d',
        'shellcheck',
      },
      auto_update = false,
      run_on_start = true,
    },
  },
}
