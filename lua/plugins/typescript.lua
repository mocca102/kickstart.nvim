-- TypeScript Tools (better auto-import support)
return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  ft = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
  config = function()
    local api = require 'typescript-tools.api'
    require('typescript-tools').setup {
      on_attach = function(client, bufnr)
        local opts = { buffer = bufnr, noremap = true, silent = true }

        -- Auto import - add missing imports
        vim.keymap.set('n', '<leader>ci', function()
          vim.cmd 'TSToolsAddMissingImports'
        end, { buffer = bufnr, desc = '[C]ode: Add missing [I]mports' })

        -- Organize imports
        vim.keymap.set('n', '<leader>co', function()
          vim.cmd 'TSToolsOrganizeImports'
        end, { buffer = bufnr, desc = '[C]ode: [O]rganize imports' })

        -- Remove unused imports
        vim.keymap.set('n', '<leader>cu', function()
          vim.cmd 'TSToolsRemoveUnusedImports'
        end, { buffer = bufnr, desc = '[C]ode: Remove [U]nused imports' })

        -- Fix all
        vim.keymap.set('n', '<leader>cf', function()
          vim.cmd 'TSToolsFixAll'
        end, { buffer = bufnr, desc = '[C]ode: [F]ix all' })
      end,
      settings = {
        tsserver_file_preferences = {
          includeInlayParameterNameHints = 'all',
          includeCompletionsForModuleExports = true,
          quotePreference = 'auto',
          includeCompletionsWithInsertText = true,
          includeCompletionsWithSnippetText = true,
          includeAutomaticOptionalChainCompletions = true,
        },
      },
    }
  end,
}
