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
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_x = {
          { require("gitblame").get_current_blame_text, cond = require("gitblame").is_blame_text_available },
        },
      },
      options = {
        globalstatus = false,
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
