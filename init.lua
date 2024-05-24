-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.g.material_style = "palenight"
vim.opt.swapfile = false

vim.cmd.colorscheme("gruvbox-baby")

vim.cmd("autocmd FileType ruby setlocal indentkeys-=.") -- ruby indent quirk
