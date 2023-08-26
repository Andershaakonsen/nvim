local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
  -- Colorschemes
  { "rose-pine/neovim", name = "rose-pine" },
  "navarasu/onedark.nvim",

  "machakann/vim-highlightedyank", -- highlighted yank
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  { "akinsho/bufferline.nvim", version = "v3.*", dependencies = "nvim-tree/nvim-web-devicons" }, -- Make tabs look better
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  "ThePrimeagen/harpoon",
  "lukas-reineke/indent-blankline.nvim",
  "tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
  "numToStr/Comment.nvim",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "Fildo7525/pretty_hover",
  "lewis6991/gitsigns.nvim",
  "nvim-tree/nvim-tree.lua",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- dependency for better sorting performance
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder
  "hrsh7th/nvim-cmp", -- completion plugin
  "hrsh7th/cmp-buffer", -- source for text in buffer
  "hrsh7th/cmp-path", -- source for file system paths
  "L3MON4D3/LuaSnip", -- snippet engine
  "saadparwaiz1/cmp_luasnip", -- for autocompletion
  "rafamadriz/friendly-snippets", -- useful snippets
  "williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
  "williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
  "neovim/nvim-lspconfig", -- easily configure language servers
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }, -- enhanced lsp uis
  "jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
  "onsails/lspkind.nvim", -- vs-code like icons for autocompletion
  "jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
  "jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  },
  "nvim-treesitter/nvim-treesitter-context",
  "windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
  { "windwp/nvim-ts-autotag", dependencies = "nvim-treesitter" }, -- autoclose tags
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
require("lazy").setup({ plugins, { import = "anders.plugins" }, { import = "anders.plugins.lsp" } })
