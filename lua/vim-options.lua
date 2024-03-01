vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.copilot_assume_mapped = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.scrolloff = 999
vim.o.breakindent = true

vim.keymap.set("n", "<leader>[", ":Ex<cr>")
vim.keymap.set("n", "<C-f>", ":Format<cr>")
