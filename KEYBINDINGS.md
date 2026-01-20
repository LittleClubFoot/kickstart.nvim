# Neovim Keybindings Quick Reference

## Legend
- `<leader>` = Space key
- `<C-x>` = Ctrl + x
- `<S-x>` = Shift + x

---

## 🚀 Navigation

| Key | Action |
|-----|--------|
| `<leader>a` | Harpoon: Mark file |
| `<C-e>` | Harpoon: Toggle menu |
| `<C-h/j/k/l>` | Harpoon: Jump to file 1-4 |
| `s` | Flash: Jump to location |
| `S` | Flash: Treesitter jump |
| `<leader>cs` | Aerial: Toggle symbols |
| `{` / `}` | Aerial: Prev/next symbol |
| `<leader>w` | Pick window |

---

## 🔍 Search & Find

| Key | Action |
|-----|--------|
| `<leader>sf` | Search files |
| `<leader>sg` | Search by grep |
| `<leader>sw` | Search word |
| `<leader>sd` | Search diagnostics |
| `<leader>sk` | Search keymaps |
| `<leader>S` | Spectre: Search/replace |

---

## 🐛 Diagnostics & Errors

| Key | Action |
|-----|--------|
| `<leader>xx` | Trouble: Diagnostics |
| `<leader>xX` | Trouble: Buffer diagnostics |
| `<leader>xs` | Trouble: Symbols |
| `[q` / `]q` | Prev/next diagnostic |
| `[d` / `]d` | Prev/next diagnostic (LSP) |

---

## 💾 Git

| Key | Action |
|-----|--------|
| `<leader>gg` | LazyGit |
| `<leader>gd` | Diffview |
| `<leader>gh` | File history |
| `<leader>gb` | Toggle blame |
| `<leader>op` | GitHub PRs |
| `<leader>oi` | GitHub issues |

---

## 🔧 Refactoring & Code Actions

| Key | Action |
|-----|--------|
| `<leader>re` | Extract function |
| `<leader>rv` | Extract variable |
| `<leader>ri` | Inline function |
| `<leader>rn` | Rename (with preview) |
| `<leader>rr` | Refactor menu |
| `<leader>ca` | Code actions |
| `gD` | Glance definitions |
| `gR` | Glance references |

---

## 📝 Documentation

| Key | Action |
|-----|--------|
| `<leader>nf` | Generate function doc |
| `<leader>nc` | Generate class doc |
| `<leader>mp` | Markdown preview |
| `K` | Hover documentation |

---

## 🧪 Testing

| Key | Action |
|-----|--------|
| `<leader>tt` | Run nearest test |
| `<leader>tf` | Run file tests |
| `<leader>td` | Debug test |
| `<leader>ts` | Test summary |
| `<leader>tw` | Watch tests |
| `[t` / `]t` | Prev/next failed test |

---

## 🏗️ Build & Tasks

| Key | Action |
|-----|--------|
| `<leader>oo` | Overseer: Toggle |
| `<leader>or` | Overseer: Run |
| `<leader>cc` | Compiler: Open |
| `<leader>cr` | Compiler: Results |

---

## 💻 Terminal

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle terminal |
| `<leader>tf` | Float terminal |
| `<leader>th` | Horizontal terminal |
| `<leader>tv` | Vertical terminal |
| `<leader>tg` | LazyGit terminal |

---

## 💬 Comments

| Key | Action |
|-----|--------|
| `gcc` | Toggle line comment |
| `gbc` | Toggle block comment |
| `gc` | Comment operator |
| `gcO` | Comment above |
| `gco` | Comment below |

---

## 📋 Code Folding

| Key | Action |
|-----|--------|
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zp` | Peek fold |
| `za` | Toggle fold |

---

## 🎨 UI & UX

| Key | Action |
|-----|--------|
| `<leader>z` | Zen mode |
| `<leader>nd` | Dismiss notifications |
| `<leader>un` | Clear notifications |

---

## 💾 Sessions

| Key | Action |
|-----|--------|
| `<leader>qs` | Save session |
| `<leader>qr` | Restore session |
| `<leader>qd` | Delete session |
| `<leader>qf` | Find sessions |

---

## 🔌 REST Client

| Key | Action |
|-----|--------|
| `<leader>rh` | Run HTTP request |
| `<leader>rp` | Preview cURL |
| `<leader>rl` | Last request |

---

## 🪟 Window Management

| Key | Action |
|-----|--------|
| `<C-w>h/j/k/l` | Move to window |
| `<C-Arrow>` | Resize window |
| `<leader><leader>h/j/k/l` | Swap window |

---

## 📦 Snippets

| Key | Action |
|-----|--------|
| `<C-k>` | Expand/jump forward |
| `<C-j>` | Jump backward |
| `<C-l>` | Next choice |

---

## 🎯 Quick Tips

1. **Which Key**: Press `<leader>` and wait to see all available actions
2. **Telescope**: `<leader>s` prefix for all search operations
3. **LSP**: `g` prefix for go-to operations (gd, gr, gi, etc.)
4. **Git**: `<leader>g` prefix for all git operations
5. **Test**: `<leader>t` prefix for testing operations
6. **Refactor**: `<leader>r` prefix for refactoring operations

---

## 🔍 Discovering More

- `:Telescope keymaps` - Search all keymaps
- `:WhichKey` - Show all keybindings
- `:checkhealth` - Verify plugin health
- `:Lazy` - Manage plugins
- `:Mason` - Manage LSP/tools
