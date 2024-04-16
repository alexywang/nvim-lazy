return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ss", false },
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<C-[>", ":BufferLineCyclePrev<CR>", silent = true },
      { "<C-]>", ":BufferLineCycleNext<CR>", silent = true },
    },
  },
}
