return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      italic_comments = true,
      italic_keywords = true,
      italic_functions = true,
      italic_variables = true,
    },
  },
  {
    "rose-pine/neovim",
    lazy = true,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "dawn", -- main
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      })
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      disable_nvimtree_bg = true,
      underline_links = true,
      italic_inlayhints = true,
      italic_comments = true,
      transparent = true,
    },
  },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true,
  },
  {
    "webhooked/kanso.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      theme = "zen",
      transparent = false,
      commentStyle = { italic = true },
      keywordStyle = { italic = false },
      functionStyle = { italic = false },
      statementStyle = { italic = false },
      typeStyle = { italic = false },
    },
  },
  {
    "blazkowolf/gruber-darker.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("night-owl").setup({
        theme_style = "light-owl",
        transparent_background = true,
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "darker",
        transparent = "true",
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = { italic = true },
          variables = { italic = true },
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        disable_background = true,
        disable_float_background = true,
        disable_italics = false,
      })
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = true,
        italic_comment = true,
        italic_keyword = true,
        italic_function = true,
        italic_variable = true,
        sidebars = "transparent",
        floats = "transparent",
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso-zen",
    },
  },
}
