-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.g.material_style = "palenight"
vim.opt.swapfile = false

vim.cmd.colorscheme("gruvbox-baby")

vim.cmd("autocmd FileType ruby setlocal indentkeys-=.") -- ruby indent quirk
vim.cmd("autocmd FileType markdown setlocal conceallevel=0") -- don't hide tildes and shit

vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"

vim.lsp.set_log_level("off")
