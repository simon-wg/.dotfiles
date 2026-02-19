return {
  {
    -- Neo-tree is a Neovim plugin to browse the file system
    -- https://github.com/nvim-neo-tree/neo-tree.nvim
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    lazy = false,
    keys = {
      { '\\', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
    },
  },
  {
    -- Soothing pastel theme for the high-spirited!
    -- https://github.com/catppuccin/nvim
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
    opts = {
      auto_integrations = true,
    },
  },
  {
    -- Plugin to improve viewing Markdown files in Neovim
    -- https://github.com/MeanderingProgrammer/render-markdown.nvim
    'MeanderingProgrammer/render-markdown.nvim',
    lazy = true,
    event = 'BufEnter *.md',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
    opts = {},
  },
  {
    'brianhuster/live-preview.nvim',
    lazy = true,
    event = 'BufEnter',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
  },
  {
    -- Highlight todo, notes, etc in comments
    -- https://github.com/folke/todo-comments.nvim
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  'HiPhish/rainbow-delimiters.nvim', -- Rainbow delimiters for Neovim with Tree-sitter
  {
    -- Suda is a plugin to read or write files with sudo command
    'lambdalisue/vim-suda',
    cmd = { 'SudaRead', 'SudaWrite' },
  },

  'tpope/vim-sleuth', -- Auto-detect indentation style
}
