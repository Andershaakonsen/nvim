require("anders.lazy")
require("anders.core.colorscheme")
require("anders.core.options")
require("anders.core.keymaps")
-- -- wndow transparancy
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "PMenu", { link = "Normal" })
vim.api.nvim_set_hl(0, "NormalNC", { link = "Normal" })

-- Set linenumber color
vim.api.nvim_command("highlight CursorLineNr guifg=#ffffff")
vim.api.nvim_command("highlight LineNr guifg=#a1a3a0")
-- vim.api.nvim_command("highlight LineNr guifg=#4ee9e4")
-- wndow transparancy
