-- Tools configuration for Mason
-- This file lists the tools that mason-tool-installer should ensure are installed.

return {
  -- Lua
  { 'lua-language-server', version = '3.16.4', auto_update = false },
  'stylua',
  -- Fish
  'fish-lsp',
  -- Python
  'debugpy',
  'ruff',
  'ty',
  -- Rust
  'rust-analyzer',
  'codelldb',
  -- Go
  'gopls',
  'goimports',
  'delve',
  -- TS
  'typescript-language-server',
  'prettier',
  'prettierd',
  'eslint',
  -- Make
  'checkmake',
  -- C/Cpp
  'clangd',
  -- TOML/more
  'tombi',
}
-- vim: ts=2 sts=2 sw=2 et
