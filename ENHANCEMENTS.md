# Neovim Power User Enhancements

This document describes all the IDE-like features and power user capabilities added to your Neovim configuration.

## Table of Contents

1. [Navigation & Workflow](#1-navigation--workflow)
2. [Git Integration](#2-git-integration)
3. [Code Intelligence & Refactoring](#3-code-intelligence--refactoring)
4. [Testing & Build Integration](#4-testing--build-integration)
5. [Terminal & External Tools](#5-terminal--external-tools)
6. [UI/UX Improvements](#6-uiux-improvements)
7. [Productivity Boosters](#7-productivity-boosters)
8. [Language Support](#8-language-support)

---

## 1. Navigation & Workflow

### Harpoon - Fast File Switching
Mark your most important files and jump between them instantly.

**Key Bindings:**
- `<leader>a` - Mark current file
- `<C-e>` - Toggle Harpoon menu
- `<C-h/j/k/l>` - Jump to files 1-4
- `<C-S-P/N>` - Navigate through marked files

### Trouble - Better Diagnostics
Beautiful diagnostics, references, and quickfix viewer.

**Key Bindings:**
- `<leader>xx` - Toggle diagnostics
- `<leader>xX` - Buffer diagnostics
- `<leader>xs` - Document symbols
- `<leader>xl` - LSP definitions/references
- `[q` / `]q` - Previous/next item

### Flash - Screen Jumping
Jump to any location on screen with 2-3 keystrokes.

**Key Bindings:**
- `s` - Flash jump
- `S` - Flash treesitter
- `<C-s>` - Toggle flash search (in command mode)

### Aerial - Code Outline
Code outline sidebar showing LSP/Treesitter symbols.

**Key Bindings:**
- `<leader>cs` - Toggle code symbols
- `<leader>cn` - Toggle aerial navigation
- `{` / `}` - Previous/next symbol

### Smart Window Management
Smart window picker and resizing.

**Key Bindings:**
- `<leader>w` - Pick a window
- `<C-Arrow>` - Resize windows
- `<C-w>h/j/k/l` - Move between windows
- `<leader><leader>h/j/k/l` - Swap windows

---

## 2. Git Integration

### LazyGit - Git TUI
Full-featured Git interface inside Neovim.

**Key Bindings:**
- `<leader>gg` - Open LazyGit
- `<leader>gf` - LazyGit current file
- `<leader>gc` - LazyGit config

### Diffview - Diffs & Conflicts
Side-by-side diffs and merge conflict resolution.

**Key Bindings:**
- `<leader>gd` - Open diff view
- `<leader>gD` - Close diff view
- `<leader>gh` - File history
- `<leader>gH` - Project history
- `<leader>gm` - View merge conflicts

### Git Blame
Inline git blame annotations.

**Key Bindings:**
- `<leader>gb` - Toggle git blame
- `<leader>go` - Open commit URL
- `<leader>gy` - Copy commit URL

### Octo - GitHub Integration
Work with GitHub issues and PRs directly in Neovim.

**Key Bindings:**
- `<leader>op` - List pull requests
- `<leader>oi` - List issues
- `<leader>oc` - Create PR
- `<leader>os` - Search GitHub

---

## 3. Code Intelligence & Refactoring

### Refactoring.nvim
Automated refactoring operations.

**Key Bindings:**
- `<leader>re` - Extract function (visual)
- `<leader>rf` - Extract to file (visual)
- `<leader>rv` - Extract variable (visual)
- `<leader>ri` - Inline function
- `<leader>rb` - Extract block
- `<leader>rr` - Refactor selection menu

### Inc-rename
Live preview of LSP symbol renames.

**Key Bindings:**
- `<leader>rn` - Rename with preview

### Glance
Better LSP references/definitions preview.

**Key Bindings:**
- `gD` - Glance definitions
- `gR` - Glance references
- `gY` - Glance type definitions
- `gM` - Glance implementations

### Neogen
Auto-generate documentation comments.

**Key Bindings:**
- `<leader>nf` - Generate function doc
- `<leader>nc` - Generate class doc
- `<leader>nt` - Generate type doc
- `<leader>nF` - Generate file doc

---

## 4. Testing & Build Integration

### Neotest
Run tests inline with results in your code.

**Key Bindings:**
- `<leader>tt` - Run nearest test
- `<leader>tf` - Run file tests
- `<leader>td` - Debug nearest test
- `<leader>ts` - Toggle test summary
- `<leader>to` - Open test output
- `<leader>tw` - Watch tests
- `[t` / `]t` - Navigate failed tests

**Supported Frameworks:**
- Python (pytest)
- Go
- Jest/Vitest
- Rust
- Lua/Plenary

### Overseer
Task runner for builds and scripts.

**Key Bindings:**
- `<leader>oo` - Toggle overseer
- `<leader>or` - Run task
- `<leader>oa` - Quick action
- `<leader>ob` - Build task

### Compiler.nvim
Quick compiler configurations.

**Key Bindings:**
- `<leader>cc` - Open compiler
- `<leader>cr` - Toggle results
- `<leader>cR` - Redo compilation

---

## 5. Terminal & External Tools

### ToggleTerm
Better terminal management with floating, split, and persistent terminals.

**Key Bindings:**
- `<C-\>` - Toggle terminal
- `<leader>tf` - Float terminal
- `<leader>th` - Horizontal terminal
- `<leader>tv` - Vertical terminal
- `<leader>tg` - LazyGit terminal
- `<leader>tp` - Python REPL
- `<leader>tn` - Node REPL
- `<leader>tH` - Htop

### REST Client
Test APIs directly from Neovim (.http files).

**Key Bindings:**
- `<leader>rh` - Run HTTP request
- `<leader>rp` - Preview cURL
- `<leader>rl` - Run last request

---

## 6. UI/UX Improvements

### Noice.nvim
Modern UI for messages, cmdline, and popups.

**Key Bindings:**
- `<leader>sn` - Search message history
- `<leader>nl` - Show last message
- `<leader>nd` - Dismiss notifications

### Dressing.nvim
Better vim.ui.select and vim.ui.input interfaces.

### Nvim-notify
Fancy notification system.

**Key Bindings:**
- `<leader>un` - Dismiss notifications

### UFO
Advanced folding with LSP and Treesitter.

**Key Bindings:**
- `zR` - Open all folds
- `zM` - Close all folds
- `zr` - Open folds except kinds
- `zm` - Close folds with
- `zp` - Peek fold

### Colorizer
Show colors for hex/RGB values inline.

### Lualine
Powerful statusline with git, diagnostics, and more.

---

## 7. Productivity Boosters

### Spectre
Project-wide search and replace UI.

**Key Bindings:**
- `<leader>S` - Toggle Spectre
- `<leader>sw` - Search word
- `<leader>sp` - Search in project

### Comment.nvim
Smart and powerful commenting.

**Key Bindings:**
- `gcc` - Toggle line comment
- `gbc` - Toggle block comment
- `gc` - Comment operator
- `gcO` - Comment above
- `gco` - Comment below
- `gcA` - Comment end of line

### Auto-session
Automatic session management per directory.

**Key Bindings:**
- `<leader>qs` - Save session
- `<leader>qr` - Restore session
- `<leader>qd` - Delete session
- `<leader>qf` - Find session

### Zen Mode
Distraction-free coding.

**Key Bindings:**
- `<leader>z` - Toggle zen mode

---

## 8. Language Support

### LuaSnip
Powerful snippet engine with snippet collections.

**Key Bindings:**
- `<C-k>` - Expand or jump forward
- `<C-j>` - Jump backward
- `<C-l>` - Next choice

### Language Servers

**Supported Languages:**
- Python (pyright)
- TypeScript/JavaScript (ts_ls)
- Go (gopls)
- Rust (rust_analyzer)
- C/C++ (clangd)
- HTML, CSS, JSON, YAML
- Bash, Docker
- Markdown
- Tailwind CSS

**Formatters Included:**
- stylua (Lua)
- black, isort (Python)
- prettier (JS/TS/JSON/etc)
- gofumpt (Go)
- shfmt (Shell)

**Linters Included:**
- pylint (Python)
- eslint_d (JavaScript)
- shellcheck (Shell)

### Markdown Preview
Live preview for markdown files.

**Key Bindings:**
- `<leader>mp` - Toggle markdown preview

---

## Installation Notes

All plugins are automatically installed by lazy.nvim on first launch. Run `:Lazy sync` to install/update all plugins.

Some plugins may require external dependencies:
- **LazyGit**: Install lazygit (`brew install lazygit` or similar)
- **Markdown Preview**: Requires Node.js
- **REST Client**: Works best with `jq` installed
- **Spectre**: Requires `rg` (ripgrep) and `sed`

## Tips

1. Use `<leader>?` or `:WhichKey` to see all available keybindings
2. Run `:checkhealth` to verify all plugins are working correctly
3. Use `:Mason` to manage LSP servers, formatters, and linters
4. Press `<leader>` and wait to see which-key popup with available actions
5. Use `<leader>sk` to search keymaps with Telescope

## Customization

All custom plugins are in `lua/custom/plugins/`. You can:
- Modify any plugin configuration
- Add new plugins by creating new files in this directory
- Disable plugins by removing or commenting out the files
- Override keybindings in the plugin configs

Enjoy your supercharged Neovim IDE! 🚀
