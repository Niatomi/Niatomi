vim.g.mapleader = " "
vim.keymap.set("n", "<leader>exp", ":Oil<CR>")

vim.keymap.set("n", "<leader>wh", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>wj", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>wk", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>wl", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>rls", ":LspRestart <CR>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle l<CR>")
vim.keymap.set("n", "<leader>tsl", ":NvimTreeResize +10<CR>")
vim.keymap.set("n", "<leader>tsh", ":NvimTreeResize -10<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
