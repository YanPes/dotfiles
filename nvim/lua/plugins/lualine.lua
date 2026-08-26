
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto", -- use colorscheme if available
        icons_enabled = true,
        globalstatus = true, -- one statusline for all windows (Neovim 0.7+)
        disabled_filetypes = {},
        refresh = { statusline = 1000, tabline = 1000 },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 0, shorting_target = 50 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "" },
        lualine_z = { "location" },
      },
    },
  },
}