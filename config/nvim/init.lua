require 'plugins'
require 'lspconfig'.pyright.setup{}

-- nvim_buf_set_option({buffer}, {name}, {value})
vim.api.nvim_buf_set_option(0, "tabstop", 2)
vim.api.nvim_buf_set_option(0, "shiftwidth", 2)
vim.api.nvim_buf_set_option(0, "expandtab", true)

-- nvim_win_set_option({window}, {name}, {value})
vim.api.nvim_win_set_option(0, "number", true)
vim.api.nvim_win_set_option(0, "relativenumber", true)

-- use jj for <esc> in insert mode
vim.api.nvim_set_keymap("i", "jj", "<esc>", {noremap = false, silent = true})

-- use arrow keys to move across vim windows (splits)
vim.api.nvim_set_keymap("n", "<up>", "<C-w><up>", {noremap = false})
vim.api.nvim_set_keymap("n", "<left>", "<C-w><left>", {noremap = false})
vim.api.nvim_set_keymap("n", "<right>", "<C-w><right>", {noremap = false})
vim.api.nvim_set_keymap("n", "<down>", "<C-w><down>", {noremap = false})

