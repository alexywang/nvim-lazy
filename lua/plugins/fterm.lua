return {
  "numToStr/FTerm.nvim",
  opts = {
    dimensions = {
      height = 0.4,
      width = 0.8,
      x = 0.5,
      y = 0.9,
    },
    border = "single",
  },
  keys = {
    { "<C-t>", ':lua require("FTerm").toggle()<CR>', mode = "n", noremap = true, silent = true },
    { "<C-t>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', mode = "t", noremap = true, silent = true },
    {
      "<leader>rt",
      "",
      callback = function()
        local path = vim.fn.expand("%:.")
        local fterm = require("FTerm")
        fterm.open()
        fterm.run("bundle exec rspec " .. path)
      end,

      desc = "Run rspec for the current file in FTerm",
    },
  },
}
