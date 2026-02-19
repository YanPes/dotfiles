return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "pyright",
        "rust-analyzer",
        "gopls",
        "bash-language-server",
        "json-lsp",
        "yaml-language-server",
        "marksman",
        "css-lsp",
        "stylelint-lsp",
        "biome",
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },
}