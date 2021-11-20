-- use jj for <esc> in insert mode
vim.api.nvim_set_keymap("i", "jj", "<esc>", {noremap = false, silent = true})

-- use arrow keys to move across vim windows (splits)
vim.api.nvim_set_keymap("n", "<up>", "<C-w><up>", {noremap = false})
vim.api.nvim_set_keymap("n", "<left>", "<C-w><left>", {noremap = false})
vim.api.nvim_set_keymap("n", "<right>", "<C-w><right>", {noremap = false})
vim.api.nvim_set_keymap("n", "<down>", "<C-w><down>", {noremap = false})

