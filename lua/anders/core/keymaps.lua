local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- turning off esc in insert mode
keymap.set("i", "<ESC>", "")
--delete single character without copying into register
keymap.set("n", "x", '"_x')

-- save on ctrl s
keymap.set("i", "<C-s>", "<C-c>:update<cr>")
keymap.set("n", "<C-s>", ":update<cr>")

-- move whole blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center screen after movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--greatest remap ever
vim.keymap.set("x", "<leader>p", '"_DP')

-- Go to end or beginning of line
vim.keymap.set("i", "<C-b>", "<ESC>^i")
vim.keymap.set("i", "<C-e>", "<end>")

-- Navigate in insert mode
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-b>", "<C-b>zz")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>td", "<cmd>TodoQuickFix<cr>")
vim.g.copilot_no_tab_map = true

-- Copilot
vim.api.nvim_set_keymap("n", "<S-tab>", 'copilot#Accept("<C-n>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<S-tab>", 'copilot#Accept("<C-n>")', { silent = true, expr = true })
keymap.set("n", "<leader>cs", "<cmd>Copilot panel<cr>")
keymap.set("n", "<leader>cd", "<cmd>Copilot disable<cr>")
keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>")

-- Trouble error
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")

-- SnipRun
keymap.set("v", "<leader>sr", "<cmd>'<,'>:SnipRun<cr>")
keymap.set("n", "<leader>sc", "<cmd>SnipClose<cr>")

-- LspSaga

keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>") -- Show buffer diagnostics

-- LSP finder - Find the symbol's definition
-- If there is no definition, it will instead be hidden
-- When you use an action in finder like "open vsplit",
-- you can use <C-t> to jump back
keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")
