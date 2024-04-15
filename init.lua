-- bootstrap lazy.nvim, LazyVim and your plugins
require("plugins.copilot")
require("config.lazy")

vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"

vim.cmd.colorscheme("gruvbox-baby")

vim.keymap.set("i", "<Tab>", 'copilot#Accept("\\<CR>")', { -- have to redefine this explicitly...
  expr = true,
  replace_keycodes = false,
  noremap = true,
  silent = true,
})
