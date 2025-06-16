-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.vscode then
else
  vim.cmd.colorscheme("gruvbox-baby")
  vim.g.gruvbox_baby_function_style = "NONE"
  vim.g.gruvbox_baby_keyword_style = "NONE"
  vim.keymap.set("n", "o", "ox<BS>", { noremap = true })
  vim.keymap.set("n", "O", "Ox<BS>", { noremap = true })
end

vim.g.material_style = "palenight"
vim.opt.swapfile = false

vim.cmd("autocmd FileType ruby setlocal indentkeys-=.") -- ruby indent quirk
vim.cmd("autocmd FileType markdown setlocal conceallevel=0") -- don't hide tildes and shit

vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"

vim.lsp.set_log_level("error")

vim.cmd("set title")
