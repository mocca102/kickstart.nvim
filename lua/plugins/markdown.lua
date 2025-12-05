-- Markdown Preview
return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  build = 'cd app && yarn install',
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
  end,
  ft = { 'markdown' },
  config = function()
    -- Keybindings for markdown preview
    vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', { desc = '[M]arkdown [P]review' })
    vim.keymap.set('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', { desc = '[M]arkdown preview [S]top' })
    vim.keymap.set('n', '<leader>mt', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown preview [T]oggle' })
  end,
}
