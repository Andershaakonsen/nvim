return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = function(...)
            return require("telescope.actions").move_selection_next(...)
          end,
          ["<C-k>"] = function(...)
            return require("telescope.actions").move_selection_previous(...)
          end,
        },
      },
    },
    file_ignore_patterns = {
      "./node_modules/*",
      "node_modules",
      "^node_modules/*",
      "node_modules/*",
      "pack/github",
      "github",
      "/pack/github",
      "^pack/github/*",
      "pack/github/*",
      "./pack/github/*",
      "./pack/github/*",
      "../../../pack/github/*",
    },
  },
}
