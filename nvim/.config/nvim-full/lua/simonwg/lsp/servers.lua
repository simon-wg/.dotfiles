-- Servers configuration for LSP
-- This file lists custom settings for language servers

return {
  -- clangd = {},
  -- gopls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`ts_ls`) will work just fine
  -- ts_ls = {},
  --

  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
      -- INFO: This snippet is in order to let lazylua work with newer lua_ls versions
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
          -- { path = "snacks.nvim", words = { "Snacks" } }, -- others you need to load
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
