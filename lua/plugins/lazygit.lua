-- LazyGit Integration
return {
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    -- Keybinding to open lazygit
    vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open Lazy[G]it' })
  end,
}
