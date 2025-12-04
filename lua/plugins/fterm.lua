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

    -- Store original dimensions and track fullscreen state
    _G.fterm_original_dims = opts.dimensions
    _G.fterm_is_fullscreen = false
  end,
  keys = {
    { "<C-t>", ':lua require("FTerm").toggle()<CR>', mode = "n", noremap = true, silent = true },
    { "<C-t>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', mode = "t", noremap = true, silent = true },
    {
      "<C-f>",
      function()
        local fterm = require("FTerm")
        local was_open = false

        -- Check if terminal is currently open by trying to close it
        -- If it was open, close() will work; if not, it won't affect anything
        pcall(function()
          -- Save the current state before closing
          local buffers = vim.api.nvim_list_bufs()
          for _, buf in ipairs(buffers) do
            if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].filetype == "FTerm" then
              was_open = true
              break
            end
          end
          fterm.close()
        end)

        if _G.fterm_is_fullscreen then
          -- Switch back to normal size
          fterm.setup({
            dimensions = _G.fterm_original_dims,
            border = "single",
          })
          _G.fterm_is_fullscreen = false
        else
          -- Switch to fullscreen
          fterm.setup({
            dimensions = {
              height = 0.95,
              width = 0.95,
              x = 0.5,
              y = 0.5,
            },
            border = "single",
          })
          _G.fterm_is_fullscreen = true
        end

        -- Reopen if it was open before
        if was_open then
          fterm.open()
        end
      end,
      mode = { "n", "t" },
      noremap = true,
      silent = true,
      desc = "Toggle FTerm fullscreen",
    },
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
