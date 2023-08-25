-- wndow transparancy
-- vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
-- vim.api.nvim_set_hl(0, "PMenu", { link = "Normal" })
-- vim.api.nvim_set_hl(0, "NormalNC", { link = "Normal" })

require("transparent").setup({
  enable = false, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
    "NormalFloat",
  },
  exclude_groups = {}, -- table: groups you don't want to clear
})
