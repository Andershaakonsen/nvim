return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      enable = true,
    },
  },
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "c_sharp",
    "tsx",
    "lua",
    "yaml",
    "html",
    "css",
    "svelte",
    "lua",
    "dockerfile",
    "java",
    "gitignore",
  },
  -- auto install above language parsers
  auto_install = true,
}
