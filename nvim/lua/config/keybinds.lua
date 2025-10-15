-- set leader key
vim.g.mapleader = " "

-- nvim netrw file finder
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- clear highlights
vim.keymap.set("n", "<ESC>", ":noh<CR>", opts)
