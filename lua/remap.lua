-- Useful command remaps
vim.keymap.leader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<A-p>", vim.cmd.tabprev)
vim.keymap.set("n", "<A-n>", vim.cmd.tabnext)
