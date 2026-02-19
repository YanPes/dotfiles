return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
               "bash",
        "html",
        "javascript",
        "css",
        "scss",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "go",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      auto_install = true,
        highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

    },
  },
}