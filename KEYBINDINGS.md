# Neovim Keybindings Guide

## Leader Key
Leader key is **Space** (`<leader>` = Space)

---

## File Navigation

### File Explorer
- `<leader>e` - Toggle NvimTree file explorer

### Telescope (Fuzzy Finder)
- `<leader>sf` - Search Files
- `<leader>s.` - Search Recent Files (oldfiles)
- `<leader>sg` - Search by Grep (search in file contents)
- `<leader>sw` - Search current Word under cursor
- `<leader><leader>` - Find existing buffers
- `<leader>sn` - Search Neovim config files
- `<leader>sh` - Search Help documentation
- `<leader>sk` - Search Keymaps
- `<leader>ss` - Search Select Telescope
- `<leader>sd` - Search Diagnostics
- `<leader>sr` - Search Resume (resume last search)
- `<leader>/` - Fuzzy search in current buffer
- `<leader>s/` - Search in Open Files

### Harpoon (Quick File Navigation)
- `<leader>a` - Add current file to Harpoon
- `<C-e>` (Ctrl+e) - Toggle Harpoon menu
- `<leader>1` - Jump to Harpoon file 1
- `<leader>2` - Jump to Harpoon file 2
- `<leader>3` - Jump to Harpoon file 3
- `<leader>4` - Jump to Harpoon file 4
- `<C-S-P>` (Ctrl+Shift+P) - Previous file in Harpoon
- `<C-S-N>` (Ctrl+Shift+N) - Next file in Harpoon

---

## LSP (Code Intelligence)

### Navigation
- `grd` - Go to Definition (jump to where function/variable is defined)
- `grD` - Go to Declaration (e.g., header files in C)
- `grr` - Go to References (find all usages)
- `gri` - Go to Implementation
- `grt` - Go to Type Definition
- `gO` - Open Document Symbols (outline of current file)
- `gW` - Open Workspace Symbols
- `<C-t>` - Jump back to previous location
- `K` - Hover documentation (show info about symbol)
- `<C-k>` - Signature help (show function parameters)

### Code Actions
- `gra` - Code Actions (quick fixes, refactorings)
- `grn` - Rename symbol
- `<leader>f` - Format buffer

### Diagnostics (Errors/Warnings)
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic
- `<leader>q` - Open diagnostic quickfix list

---

## TypeScript/JavaScript Specific

### Auto-Import (TypeScript Tools)
- `<leader>ci` - Add missing imports
- `<leader>co` - Organize imports
- `<leader>cu` - Remove unused imports
- `<leader>cf` - Fix all (imports + other fixes)

---

## Git Integration

### LazyGit
- `<leader>gg` - Open LazyGit

### GitSigns (from Kickstart)
- `<leader>hp` - Preview hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hR` - Reset buffer
- `<leader>hb` - Blame line
- `<leader>hd` - Diff this
- `<leader>hD` - Diff this ~

---

## Window Management

### Navigation
- `<C-h>` - Move to left window
- `<C-j>` - Move to lower window
- `<C-k>` - Move to upper window
- `<C-l>` - Move to right window

### Splits
- `:split` or `:sp` - Horizontal split
- `:vsplit` or `:vsp` - Vertical split
- `:close` - Close current window

---

## Buffer Management

### Navigation
- `<leader><leader>` - Find existing buffers (Telescope)

---

## Editing

### Basic
- `<Esc>` - Clear search highlighting
- `<leader>q` - Quit (with diagnostic check)

### Visual Mode
- `<` - Indent left (stays in visual mode)
- `>` - Indent right (stays in visual mode)

### Terminal Mode
- `<Esc><Esc>` - Exit terminal mode

### Treesitter Textobjects

#### Select (works with any operator: d, y, c, v, etc.)
- `af` - Select **a**round **f**unction (includes function signature)
- `if` - Select **i**nside **f**unction (function body only)
- `ac` - Select **a**round **c**lass
- `ic` - Select **i**nside **c**lass
- `aa` - Select **a**round **a**rgument/parameter
- `ia` - Select **i**nside **a**rgument/parameter
- `ab` - Select **a**round **b**lock
- `ib` - Select **i**nside **b**lock
- `al` - Select **a**round **l**oop
- `il` - Select **i**nside **l**oop
- `ai` - Select **a**round condit**i**onal (if/else)
- `ii` - Select **i**nside condit**i**onal
- `a/` - Select **a**round comment

**Examples:**
- `daf` - **D**elete **a**round **f**unction (deletes entire function)
- `vif` - **V**isually select **i**nside **f**unction (select function body)
- `caa` - **C**hange **a**round **a**rgument (change parameter including commas)
- `yac` - **Y**ank **a**round **c**lass (copy entire class)

#### Navigation (jump between functions, classes, etc.)
- `]f` - Jump to next function start
- `[f` - Jump to previous function start
- `]F` - Jump to next function end
- `[F` - Jump to previous function end
- `]c` - Jump to next class start
- `[c` - Jump to previous class start
- `]C` - Jump to next class end
- `[C` - Jump to previous class end
- `]a` - Jump to next argument/parameter
- `[a` - Jump to previous argument/parameter
- `]A` - Jump to next argument end
- `[A` - Jump to previous argument end

#### Swap (rearrange code elements)
- `<leader>sa` - Swap current argument with next
- `<leader>sA` - Swap current argument with previous

**Example:** In `foo(a, b, c)`, put cursor on `b` and press `<leader>sa` → `foo(a, c, b)`

---

## Completion (blink.cmp)

While in insert mode:
- `<C-y>` - Accept completion ([y]es)
- `<C-n>` / `<Down>` - Next completion item
- `<C-p>` / `<Up>` - Previous completion item
- `<C-Space>` - Open completion menu or docs
- `<C-e>` - Hide menu
- `<C-k>` - Toggle signature help
- `<Tab>` / `<S-Tab>` - Move through snippet placeholders

---

## Plugin Management

### Lazy.nvim
- `:Lazy` - Open Lazy plugin manager
- `:Lazy sync` - Install/update/clean plugins
- `:Lazy clean` - Remove unused plugins
- `:Lazy update` - Update plugins

---

## Utility Commands

### LSP
- `:LspInfo` - Show LSP server information
- `:Mason` - Open Mason (LSP/tool installer)
- `:ConformInfo` - Show formatting configuration

### TypeScript Tools
- `:TSToolsAddMissingImports` - Add missing imports
- `:TSToolsOrganizeImports` - Organize imports
- `:TSToolsRemoveUnusedImports` - Remove unused
- `:TSToolsFixAll` - Fix all issues

### File Explorer
- `:NvimTreeToggle` - Toggle file explorer
- `:NvimTreeFocus` - Focus file explorer

### Telescope
- `:Telescope` - Open Telescope picker
- In Telescope:
  - `<C-/>` (insert mode) or `?` (normal mode) - Show all Telescope keymaps

---

## Tips

1. **Go to Definition and Back**: Use `grd` to jump to definition, then `<C-t>` to jump back
2. **Quick File Switching**: Use Harpoon (`<leader>a` to mark, `<leader>1-4` to jump)
3. **Find Anything**: Use `<leader>sf` for files, `<leader>sg` for text in files
4. **Auto-import**: Place cursor on undefined variable, press `<leader>ci`
5. **Code Actions**: When you see an error/warning, press `gra` for quick fixes
6. **Which-key**: Press `<leader>` and wait - a popup shows all available commands

---

## Configuration Files

- Main config: `~/.config/nvim/init.lua`
- This guide: `~/.config/nvim/KEYBINDINGS.md`
- Backup config: `~/.config/nvim.backup.20251121_161722/`

---

## Settings

- **Tab size**: 2 spaces
- **Auto-format on save**: Enabled (using ESLint for JS/TS, Stylua for Lua)
- **Line numbers**: Enabled
- **Clipboard**: Synced with system
- **Undo history**: Persistent

---

## Getting Help

- `:help` - Open Neovim help
- `:help <topic>` - Search help for specific topic
- `<leader>sh` - Search help with Telescope
- `:Tutor` - Built-in Neovim tutorial
- `:checkhealth` - Check for configuration issues
