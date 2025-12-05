-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode ' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Split window management
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = '[S]plit [V]ertically' })
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = '[S]plit [H]orizontally' })
vim.keymap.set('n', '<leader>sx', ':close<CR>', { desc = '[S]plit: Close (e[X]it)' })
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = '[S]plit: [E]qualize sizes' })
vim.keymap.set('n', '<leader>sm', ':only<CR>', { desc = '[S]plit: [M]aximize current' })

-- Resize windows with arrow keys
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })

-- Buffer management
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>bD', ':bdelete!<CR>', { desc = '[B]uffer [D]elete (force)' })
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>ba', ':%bdelete<CR>', { desc = '[B]uffer delete [A]ll' })
vim.keymap.set('n', '<leader>bo', ':%bdelete|edit #|normal `"<CR>', { desc = '[B]uffer delete [O]thers' })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { desc = 'Previous buffer' })

-- Tab management
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = '[T]ab [N]ew' })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = '[T]ab [C]lose' })
vim.keymap.set('n', '<leader>to', ':tabonly<CR>', { desc = '[T]ab [O]nly (close others)' })
vim.keymap.set('n', '<leader>tN', ':tabnext<CR>', { desc = '[T]ab [N]ext' })
vim.keymap.set('n', '<leader>tp', ':tabprevious<CR>', { desc = '[T]ab [P]revious' })

-- Text manipulation
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and reselect' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and reselect' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines and keep cursor position' })
vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank to system clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank to system clipboard' })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = '[Y]ank line to system clipboard' })
vim.keymap.set('n', '<leader>p', '"+p', { desc = '[P]aste from system clipboard' })
vim.keymap.set('v', '<leader>p', '"+p', { desc = '[P]aste from system clipboard' })

-- Better search navigation
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' })

-- Folding keybindings
vim.keymap.set('n', '<leader>zz', 'za', { desc = 'Toggle fold' })
vim.keymap.set('n', '<leader>zo', 'zo', { desc = 'Open fold' })
vim.keymap.set('n', '<leader>zc', 'zc', { desc = 'Close fold' })
vim.keymap.set('n', '<leader>zR', 'zR', { desc = 'Open all folds' })
vim.keymap.set('n', '<leader>zM', 'zM', { desc = 'Close all folds' })

-- Quickfix and location list
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = '[Q]uickfix [O]pen' })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { desc = '[Q]uickfix [C]lose' })
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { desc = '[Q]uickfix [N]ext' })
vim.keymap.set('n', '<leader>qp', ':cprevious<CR>', { desc = '[Q]uickfix [P]revious' })
vim.keymap.set('n', '<leader>lo', ':lopen<CR>', { desc = '[L]ocation list [O]pen' })
vim.keymap.set('n', '<leader>lc', ':lclose<CR>', { desc = '[L]ocation list [C]lose' })
vim.keymap.set('n', '<leader>ln', ':lnext<CR>', { desc = '[L]ocation list [N]ext' })
vim.keymap.set('n', '<leader>lp', ':lprevious<CR>', { desc = '[L]ocation list [P]revious' })

-- Better page navigation (keep cursor centered)
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page down (centered)' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page up (centered)' })

-- Quick save and quit
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = '[W]rite (save) file' })
vim.keymap.set('n', '<leader>W', ':wa<CR>', { desc = '[W]rite all files' })
vim.keymap.set('n', '<leader>Q', ':qa<CR>', { desc = '[Q]uit all' })

-- Search and replace
vim.keymap.set('n', '<leader>rw', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>', { desc = '[R]eplace [W]ord under cursor' })
vim.keymap.set('v', '<leader>rw', ':s/\\<<C-r><C-w>\\>//g<Left><Left>', { desc = '[R]eplace [W]ord in selection' })

-- Clear search, diff update and redraw
vim.keymap.set('n', '<leader>ur', '<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { desc = '[U]I [R]efresh' })

-- Better command line editing
vim.keymap.set('c', '<C-a>', '<Home>', { desc = 'Go to beginning of line' })
vim.keymap.set('c', '<C-e>', '<End>', { desc = 'Go to end of line' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
