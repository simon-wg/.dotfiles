-- Supercharge your Rust experience
-- https://github.com/mrcjkb/rustaceanvim

return {
  {
    -- `rustaceanvim` configures rust-analyzer, as well as DAP for rust
    -- Important to not have rust_analyzer in lspconfig enabled.
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      vim.g.rustaceanvim = {
        server = {
          capabilities = capabilities,
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
