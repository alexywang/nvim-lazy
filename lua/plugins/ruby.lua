return {
  "tpope/vim-rails",
  keys = {
    { "<leader>A", ":execute \"e \" . eval('rails#buffer().alternate()')" },
  },
}
