return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- LazyVim installs this list and enables highlighting, indentation and folds.
      -- Its opts_extend also preserves parsers supplied by language extras.
      ensure_installed = {
        "bash",
        "css",
        "dockerfile",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
        "scss",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },
}
