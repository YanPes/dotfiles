return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
    "biome",
    "css-lsp",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "golangci-lint",
    "hadolint",
    "html-lsp",
    "hydra-lsp",
    "jdtls",
    "js-debug-adapter",
    "json-lsp",
    "lua-language-server",
    "markdown-toc",
    "markdownlint-cli2",
    "marksman",
    "mdx-analyzer",
    "pyright",
    "ruff",
    "selene",
    "shellcheck",
    "shfmt",
    "stylua",
    "taplo",
    "vtsls", 
    "yaml-language-server"
      },
    },
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },
}
