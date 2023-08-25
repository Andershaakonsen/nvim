require("anders.lazy")
require("anders.colorscheme")
require("anders.options")
require("anders.keymaps")
-- require("anders.core.options")
-- require("anders.core.keymaps")
-- require("anders.core.colorscheme")
-- require("anders.after.telescope")
-- require("anders.after.nvim-cmp")
-- require("anders.after.lsp.mason")
-- require("anders.after.lsp.lspsaga")
-- require("anders.after.lsp.lspconfig")
-- require("anders.after.lsp.null-ls")
-- require("anders.after.autopairs")
-- require("anders.after.treesitter")
-- require("anders.after.gitsigns")
-- require("anders.after.bufferline")
-- require("anders.after.harpoon")
-- require("anders.after.omnisharp")
-- require("anders.after.treesitter-context")
-- require("anders.after.comment")
-- require("anders.after.nvim-tree")

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
