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
      { "<C-[>", ":BufferLineCyclePrev<CR>", silent = true, noremap = true },
      { "<C-]>", ":BufferLineCycleNext<CR>", silent = true, noremap = true },
      { "<Esc>", "", noremap = true },
    },
  },
  {
    "lukas-reinke/indent-blankline.nvim",
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
    "echanovski/mini.animate",
    opts = {
      cursor = {
        timing = require("mini.animate").gen_timing.none(),
      },
    },
  },
}
