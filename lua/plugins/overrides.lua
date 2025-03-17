return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ss", false },
      { "<leader><leader>", false },
      { "<C-p>", ":Telescope git_files<CR>", silent = true, noremap = true },
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<A-h>", ":BufferLineCyclePrev<CR>", silent = true, noremap = true },
      { "<A-l>", ":BufferLineCycleNext<CR>", silent = true, noremap = true },
      { "<Esc>", "", noremap = true },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    version = "2.20.8",
    opts = {
      indent = {
        char = "▏",
        tab_char = "▏",
      },
    },
  },
  {
    "echasnovski/mini.animate",
    opts = {
      cursor = {
        timing = require("mini.animate").gen_timing.none(),
      },
      scroll = {
        enable = false,
        timing = require("mini.animate").gen_timing.none(),
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettier")
    end,
  },
}
