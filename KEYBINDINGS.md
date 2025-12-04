# Neovim Keybindings Guide

## Leader Key
Leader key is **Space** (`<leader>` = Space)

---

## Vim Basics

### Understanding Vim Modes

Vim has different modes for different tasks:

1. **Normal Mode** - Default mode for navigation and commands (press `<Esc>` to enter)
2. **Insert Mode** - For typing text (press `i`, `a`, `o`, etc. to enter)
3. **Visual Mode** - For selecting text (press `v`, `V`, `<C-v>` to enter)
4. **Command Mode** - For running commands (press `:` to enter)

### Basic Navigation (Normal Mode)

#### Character Movement
- `h` - Move left
- `j` - Move down
- `k` - Move up
- `l` - Move right

**Tip**: Think of `j` as "jump down" and `k` as "kick up"

#### Word Movement
- `w` - Jump to start of next **w**ord
- `b` - Jump **b**ackward to start of previous word
- `e` - Jump to **e**nd of word
- `W`, `B`, `E` - Same as above but skip punctuation (WORD = space-separated)

#### Line Movement
- `0` - Jump to beginning of line
- `^` - Jump to first non-blank character of line
- `$` - Jump to end of line
- `g_` - Jump to last non-blank character of line

#### Screen Movement
- `H` - Move to top of screen (**H**igh)
- `M` - Move to **m**iddle of screen
- `L` - Move to bottom of screen (**L**ow)
- `gg` - Go to first line of file
- `G` - Go to last line of file
- `{line-number}G` or `:{line-number}` - Go to specific line (e.g., `42G` or `:42`)

#### Paragraph & Section Movement
- `{` - Jump to previous paragraph/block
- `}` - Jump to next paragraph/block
- `(` - Jump to previous sentence
- `)` - Jump to next sentence

#### Scrolling
- `<C-f>` - Scroll **f**orward (page down)
- `<C-b>` - Scroll **b**ackward (page up)
- `<C-d>` - Scroll **d**own half page (centered in this config)
- `<C-u>` - Scroll **u**p half page (centered in this config)
- `<C-e>` - Scroll down one line
- `<C-y>` - Scroll up one line
- `zz` - Center current line on screen
- `zt` - Move current line to **t**op of screen
- `zb` - Move current line to **b**ottom of screen

### Entering Insert Mode

- `i` - **I**nsert before cursor
- `a` - **A**ppend after cursor
- `I` - Insert at beginning of line
- `A` - Append at end of line
- `o` - **O**pen new line below and insert
- `O` - Open new line above and insert
- `gi` - Insert at last insert position
- `<Esc>` or `<C-[>` - Return to Normal mode

### Basic Editing (Normal Mode)

#### Delete
- `x` - Delete character under cursor
- `X` - Delete character before cursor
- `dw` - **D**elete **w**ord
- `dd` - Delete entire line
- `D` - Delete from cursor to end of line
- `d$` - Delete to end of line (same as `D`)
- `d0` - Delete to beginning of line

#### Change (Delete and enter Insert mode)
- `cw` - **C**hange **w**ord
- `cc` or `S` - Change entire line
- `C` - Change from cursor to end of line
- `c$` - Change to end of line (same as `C`)
- `ciw` - Change **i**nner **w**ord (anywhere in word)
- `ci"` - Change inside quotes
- `ci(` or `ci)` - Change inside parentheses
- `ci{` or `ci}` - Change inside braces
- `ci[` or `ci]` - Change inside brackets

#### Copy (Yank) and Paste
- `yw` - **Y**ank (copy) **w**ord
- `yy` or `Y` - Yank entire line
- `yiw` - Yank **i**nner **w**ord
- `yi"` - Yank inside quotes
- `p` - **P**aste after cursor/below line
- `P` - Paste before cursor/above line
- `<leader>y` - Yank to system clipboard (custom)
- `<leader>p` - Paste from system clipboard (custom)

#### Undo and Redo
- `u` - **U**ndo last change
- `<C-r>` - **R**edo (undo the undo)
- `U` - Undo all changes on current line

#### Repeat
- `.` - Repeat last change (extremely powerful!)

#### Replace
- `r{char}` - **R**eplace single character with `{char}`
- `R` - Enter Replace mode (overwrite text)
- `~` - Toggle case of character under cursor
- `gu{motion}` - Make lowercase (e.g., `guw` = lowercase word)
- `gU{motion}` - Make uppercase (e.g., `gUw` = uppercase word)

#### Join Lines
- `J` - **J**oin current line with next line (with space)
- `gJ` - Join without space

### Visual Mode

#### Enter Visual Mode
- `v` - Character-wise visual mode
- `V` - Line-wise visual mode
- `<C-v>` - Block visual mode (rectangular selection)
- `gv` - Re-select last visual selection

#### Operations in Visual Mode
After selecting text:
- `d` - Delete selection
- `c` - Change selection (delete and enter Insert mode)
- `y` - Yank (copy) selection
- `>` - Indent right (stays in visual mode in this config)
- `<` - Indent left (stays in visual mode in this config)
- `~` - Toggle case
- `u` - Make lowercase
- `U` - Make uppercase
- `J` - Move selection down (custom in this config)
- `K` - Move selection up (custom in this config)

### Search and Find

#### Search
- `/pattern` - Search forward for pattern
- `?pattern` - Search backward for pattern
- `n` - Next search result (centered in this config)
- `N` - Previous search result (centered in this config)
- `*` - Search forward for word under cursor
- `#` - Search backward for word under cursor
- `:%s/old/new/g` - Replace all `old` with `new` in file
- `:%s/old/new/gc` - Replace with confirmation

#### Find Character in Line
- `f{char}` - **F**ind next occurrence of `{char}` in line
- `F{char}` - Find previous occurrence of `{char}` in line
- `t{char}` - Move **t**o just before next `{char}`
- `T{char}` - Move to just after previous `{char}`
- `;` - Repeat last f/F/t/T movement
- `,` - Repeat last f/F/t/T movement in opposite direction

### Text Objects (Powerful!)

Text objects work with operators (d, c, y, v, etc.):

#### Inner vs Around
- `i` = **i**nner (contents only)
- `a` = **a**round (contents + delimiters)

#### Common Text Objects
- `iw` / `aw` - **i**nner/**a**round **w**ord
- `iW` / `aW` - inner/around WORD (space-separated)
- `is` / `as` - inner/around sentence
- `ip` / `ap` - inner/around paragraph
- `i"` / `a"` - inner/around double quotes
- `i'` / `a'` - inner/around single quotes
- `i`` / `a`` - inner/around backticks
- `i(` / `a(` or `i)` / `a)` - inner/around parentheses
- `i{` / `a{` or `i}` / `a}` - inner/around braces
- `i[` / `a[` or `i]` / `a]` - inner/around brackets
- `i<` / `a<` or `i>` / `a>` - inner/around angle brackets
- `it` / `at` - inner/around HTML/XML tag

#### Examples
- `diw` - **D**elete **i**nner **w**ord (cursor anywhere in word)
- `ciw` - **C**hange **i**nner **w**ord
- `yiw` - **Y**ank **i**nner **w**ord
- `vip` - **V**isually select **i**nner **p**aragraph
- `ci"` - Change text inside quotes
- `da(` - Delete around parentheses (including parentheses)
- `yi{` - Yank inside braces

### Marks and Jumps

#### Marks
- `m{a-z}` - Set local mark (lowercase = current file)
- `m{A-Z}` - Set global mark (uppercase = across files)
- `` `{mark} `` - Jump to exact position of mark
- `'{mark}` - Jump to beginning of line with mark
- `` `. `` - Jump to last change position
- `` `^ `` - Jump to last insert position
- `''` - Jump to position before last jump

#### Jump List
- `<C-o>` - Jump to previous location in jump list
- `<C-i>` - Jump to next location in jump list
- `:jumps` - Show jump list

### Macros (Recording Actions)

- `q{a-z}` - Start recording macro into register `{a-z}`
- `q` - Stop recording
- `@{a-z}` - Play macro from register `{a-z}`
- `@@` - Replay last macro
- `{number}@{a-z}` - Play macro `{number}` times

**Example**: `qa` (start recording to register 'a'), perform actions, `q` (stop), `@a` (replay)

### Registers

- `"{a-z}y` - Yank into specific register
- `"{a-z}p` - Paste from specific register
- `"+y` - Yank to system clipboard
- `"+p` - Paste from system clipboard
- `"*y` - Yank to selection clipboard (Linux/Mac)
- `:reg` - Show all registers

### Numbers and Counts

You can prefix most commands with a number to repeat them:

- `5j` - Move down 5 lines
- `3w` - Move forward 3 words
- `2dd` - Delete 2 lines
- `4x` - Delete 4 characters
- `10G` or `:10` - Go to line 10
- `.` - Repeat with same count

### Command Mode

Press `:` to enter command mode:

#### File Operations
- `:w` - **W**rite (save) file
- `:w filename` - Save as `filename`
- `:q` - **Q**uit
- `:q!` - Quit without saving
- `:wq` or `:x` - Write and quit
- `:wa` - Write all buffers
- `:qa` - Quit all
- `:qa!` - Quit all without saving

#### File Navigation
- `:e filename` - **E**dit (open) file
- `:e!` - Reload current file (discard changes)
- `:enew` - Create new unnamed buffer

#### Helpful Commands
- `:help topic` - Open help for topic
- `:set number` - Show line numbers
- `:set relativenumber` - Show relative line numbers
- `:set wrap` / `:set nowrap` - Toggle line wrapping
- `:noh` or `:nohlsearch` - Clear search highlighting
- `:!command` - Run shell command
- `:messages` - Show message history

### Intermediate Vim Techniques

#### Increment/Decrement Numbers
- `<C-a>` - Increment number under cursor
- `<C-x>` - Decrement number under cursor

#### Split Commands (with motions)
- `d` + motion - Delete
- `c` + motion - Change
- `y` + motion - Yank
- `v` + motion - Visual select
- `>` + motion - Indent right
- `<` + motion - Indent left
- `=` + motion - Auto-indent

**Examples:**
- `d3w` - Delete 3 words
- `c$` - Change to end of line
- `y2j` - Yank current line and 2 lines below
- `>ip` - Indent paragraph
- `=ap` - Auto-indent around paragraph

#### Global Commands
- `:g/pattern/d` - Delete all lines matching pattern
- `:g!/pattern/d` or `:v/pattern/d` - Delete all lines NOT matching pattern
- `:g/pattern/normal A;` - Append `;` to end of lines matching pattern

---

## File Navigation

### File Explorer
- `<leader>e` - Toggle NvimTree file explorer

### Telescope (Fuzzy Finder)
- `<leader>sf` - Search Files (includes hidden files)
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

#### Telescope Special Keymaps (while in Telescope)
- `<Tab>` - Select item and move to next
- `<S-Tab>` - Select item and move to previous
- `<C-q>` - Send selected items to quickfix list
- `<C-/>` (insert) or `?` (normal) - Show all Telescope keymaps

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

## Search & Replace

### Search Navigation
- `n` - Next search result (centered)
- `N` - Previous search result (centered)
- `*` - Search for word under cursor (forward)
- `#` - Search for word under cursor (backward)
- `<leader>ur` - Refresh UI (clear search, redraw)

### Replace
- `<leader>rw` - Replace word under cursor (in file)
- `<leader>rw` (visual) - Replace word in selection

### Page Navigation
- `<C-d>` - Page down (centered)
- `<C-u>` - Page up (centered)

---

## Folding

- `<leader>zz` - Toggle fold at cursor
- `<leader>zo` - Open fold
- `<leader>zc` - Close fold
- `<leader>zR` - Open all folds
- `<leader>zM` - Close all folds
- `zj` - Jump to next fold
- `zk` - Jump to previous fold

**Quick tip:** Also works with standard `za`, `zo`, `zc`, `zR`, `zM`

---

## Quickfix & Location Lists

### Quickfix
- `<leader>qo` - Open quickfix list
- `<leader>qc` - Close quickfix list
- `<leader>qn` - Next quickfix item
- `<leader>qp` - Previous quickfix item

### Location List
- `<leader>lo` - Open location list
- `<leader>lc` - Close location list
- `<leader>ln` - Next location item
- `<leader>lp` - Previous location item

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
- `<leader>sv` - Split vertically
- `<leader>sh` - Split horizontally
- `<leader>sx` - Close current split
- `<leader>se` - Equalize split sizes
- `<leader>sm` - Maximize current split (close others)

### Resize
- `<C-Up>` - Increase window height
- `<C-Down>` - Decrease window height
- `<C-Left>` - Decrease window width
- `<C-Right>` - Increase window width

---

## Buffer Management

### Navigation
- `<leader><leader>` - Find existing buffers (Telescope)
- `<S-h>` (Shift+h) - Previous buffer
- `<S-l>` (Shift+l) - Next buffer
- `<leader>bn` - Next buffer
- `<leader>bp` - Previous buffer

### Actions
- `<leader>bd` - Delete buffer
- `<leader>bD` - Delete buffer (force)
- `<leader>ba` - Delete all buffers
- `<leader>bo` - Delete other buffers (keep current)

---

## Tab Management

- `<leader>tn` - New tab
- `<leader>tc` - Close tab
- `<leader>to` - Close other tabs (keep current)
- `<leader>tN` - Next tab
- `<leader>tp` - Previous tab

---

## Editing

### Basic
- `<Esc>` - Clear search highlighting
- `<leader>w` - Write (save) file
- `<leader>W` - Write all files
- `<leader>Q` - Quit all

### Text Manipulation
- `J` - Join lines (keep cursor position)
- `<leader>y` - Yank to system clipboard
- `<leader>Y` - Yank line to system clipboard
- `<leader>p` - Paste from system clipboard

### Visual Mode
- `<` - Indent left (reselect after)
- `>` - Indent right (reselect after)
- `J` - Move selection down
- `K` - Move selection up
- `<leader>y` - Yank selection to system clipboard
- `<leader>p` - Paste from system clipboard

### Terminal Mode
- `<Esc><Esc>` - Exit terminal mode

### Command Line Mode
- `<C-a>` - Go to beginning of line
- `<C-e>` - Go to end of line

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

## Tips & Workflows

1. **Go to Definition and Back**: Use `grd` to jump to definition, then `<C-t>` to jump back
2. **Quick File Switching**: Use Harpoon (`<leader>a` to mark, `<leader>1-4` to jump)
3. **Find Anything**: Use `<leader>sf` for files, `<leader>sg` for text in files
4. **Auto-import**: Place cursor on undefined variable, press `<leader>ci`
5. **Code Actions**: When you see an error/warning, press `gra` for quick fixes
6. **Which-key**: Press `<leader>` and wait - a popup shows all available commands
7. **Multi-select in Telescope**: Use `<Tab>` to select multiple files, then `<C-q>` to send to quickfix
8. **Quick Buffer Navigation**: Use `<S-h>` and `<S-l>` to quickly switch between open buffers
9. **Yank Word**: Position cursor on word, press `yiw` to yank inner word
10. **Centered Navigation**: All search and page navigation keeps cursor centered for better visibility
11. **Move Code**: Select lines in visual mode, use `J`/`K` to move up/down
12. **Fold Functions**: Put cursor on function, press `<leader>zz` to toggle fold

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
