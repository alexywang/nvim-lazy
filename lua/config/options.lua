-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.confirm = false

vim.opt_local.formatoptions:remove({ "r", "o" }) -- prevent comments from continuing after enter
vim.cmd("autocmd FileType ruby setlocal indentkeys-=.") -- ruby indent quirk
