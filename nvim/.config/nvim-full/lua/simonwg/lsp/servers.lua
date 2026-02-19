-- Servers configuration for LSP
-- This file lists custom settings for language servers

return {
  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
