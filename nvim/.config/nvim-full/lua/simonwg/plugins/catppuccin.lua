-- Soothing pastel theme for the high-spirited!
-- https://github.com/catppuccin/nvim

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-macchiato'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
