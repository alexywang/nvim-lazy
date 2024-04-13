vim.g.copilot_no_tab_map = true
vim.keymap.set("i", "<Tab>", 'copilot#Accept("\\<CR>")', { -- have to redefine this explicitly...
  expr = true,
  replace_keycodes = false,
})
