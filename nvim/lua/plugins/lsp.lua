return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- TypeScript/vtsls is configured by the enabled LazyVim language extra.
      -- Installing these servers with Mason alone does not configure them here.
      servers = {
        html = {},
        cssls = {},
      },
    },
  },
}
