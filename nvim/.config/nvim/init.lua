vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.o.signcolumn = "yes"
vim.o.background = "dark"
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR>:source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.pack.add({
		{src = "https://github.com/loctvl842/monokai-pro.nvim"},
		{src = "https://github.com/neovim/nvim-lspconfig"},
		{src = "https://github.com/mason-org/mason.nvim"},
		{src = "https://github.com/Shatur/neovim-ayu"}
})

require("mason").setup()

vim.lsp.enable({"lua_ls", "vtsls"})

vim.cmd("colorscheme ayu-mirage")
