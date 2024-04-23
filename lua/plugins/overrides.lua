return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ss", false },
      { "<C-p>", ":Telescope git_files<CR>", silent = true, noremap = true },
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Left>", ":BufferLineCyclePrev<CR>", silent = true, noremap = true },
      { "<Right>", ":BufferLineCycleNext<CR>", silent = true, noremap = true },
      { "<Esc>", "", noremap = true },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "▏",
        tab_char = "▏",
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "▏",
      draw = {
        animation = require("mini.indentscope").gen_animation.linear({ duration = 5 }),
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
}
