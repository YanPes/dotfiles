local telescope_builtin = require("telescope.builtin")
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      hidden = true,
      mappings = {
        i = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
        },
        n = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
        },
      },
    },
  },

  keys = {
    {
      "<leader><leader>",
      function()
        telescope_builtin.find_files({ hidden = true })
      end,
      desc = "Find files (root dir)",
    },
    {
      "<leader>ff",
      function()
        telescope_builtin.find_files({ hidden = true })
      end,
      desc = "Find files (root dir)",
    },
    {
      "<leader>fF",
      function()
        telescope_builtin.find_files({ cwd = false, hidden = true })
      end,
      desc = "Find files (cwd)",
    },
    {
      "<leader>/",
      function()
        telescope_builtin.live_grep({
          cwd = false,
          hidden = true,
          additional_args = {
            "--hidden",
            "--no-ignore",
            "--glob",
            "!.git/",
            "--glob",
            "!**/node_modules/**",
          },
        })
      end,
      desc = "Grep in cwd",
    },
  },
}
