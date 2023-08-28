vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = true })
vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", { silent = true, desc = "jk to escape" })
vim.keymap.set("t", "jk", "<Esc><Esc>", { silent = true, desc = "jk to escape" })

vim.g.relativenumber = true
vim.g.number = true
vim.g.tabstop = 2
vim.g.softtabstop = 2
vim.g.shiftwidth = 2
vim.g.expandtab = 2
vim.g.smartindent = true
vim.g.scrolloff = 6
vim.g.signcolumn = true
vim.g.encoding = 'utf-8'

vim.g.R_auto_start = 2
vim.g.R_assign = 2
vim.cmd("iabb ä %>%")

vim.g.noswapfile = true
