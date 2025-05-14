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
    version = "v2.20.3",
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
  {
    "https://github.com/mason-org/mason.nvim.git",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettier")
    end,
  },
}
