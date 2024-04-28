-- Keymaps are automatically loaded on the VeryLazy event Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- move shit up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- yank to real buffer
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- split panes
vim.keymap.set("n", "<leader>sv", vim.cmd.split, { noremap = true })
vim.keymap.set("n", "<leader>ss", vim.cmd.vsplit, { noremap = true })
vim.keymap.set("n", "<C-e>", ":wincmd w<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<C-e>", "<C-\\><C-n>:wincmd w<CR>", { noremap = true, silent = true })

-- disable annoying shit
vim.keymap.set("n", "<A-j>", "", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "", { noremap = true, silent = true })

-- copy path
vim.api.nvim_create_user_command("CopyRelPath", "call setreg('+', expand('%'))", {})
vim.keymap.set("n", "<leader>p", ":CopyRelPath<CR>", { noremap = true, silent = true })

--show diagnostic
vim.keymap.set("n", "<leader>dd", "<cmd> lua vim.diagnostic.open_float() <CR>", { noremap = true, silent = true })
