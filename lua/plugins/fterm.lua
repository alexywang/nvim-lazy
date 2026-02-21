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
  config = function(_, opts)
    require("FTerm").setup(opts)
    
    -- Create second terminal instance with different border style
    local fterm2 = require("FTerm"):new({
      ft = 'fterm_secondary',
      dimensions = {
        height = opts.dimensions.height,
        width = opts.dimensions.width,
        x = opts.dimensions.x,
        y = 0.8, -- Offset upwards from default 0.9
      },
      border = "double", -- Different border style
    })
    
    -- Make it globally accessible
    _G.fterm2 = fterm2
  end,
  keys = {
    { "<C-t>", ':lua require("FTerm").toggle()<CR>', mode = "n", noremap = true, silent = true },
    { "<C-t>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', mode = "t", noremap = true, silent = true },
    { "<C-q>", ':lua _G.fterm2:toggle()<CR>', mode = "n", noremap = true, silent = true },
    { "<C-q>", '<C-\\><C-n>:lua _G.fterm2:toggle()<CR>', mode = "t", noremap = true, silent = true },
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
