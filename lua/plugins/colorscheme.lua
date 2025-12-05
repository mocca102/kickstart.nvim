-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command in the config to whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
      },
    }

    -- Load the colorscheme here.
    -- Catppuccin has different flavors: 'catppuccin-latte', 'catppuccin-frappe',
    -- 'catppuccin-macchiato', or 'catppuccin-mocha'
    vim.cmd.colorscheme 'catppuccin'
  end,
}
