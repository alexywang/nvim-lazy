return {
  "numToStr/FTerm.nvim",
  keys = {
    { "<C-t>", ':lua require("FTerm").toggle()<CR>', mode = "n", noremap = true, silent = true },
    { "<C-t>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', mode = "t", noremap = true, silent = true },
  },
}
