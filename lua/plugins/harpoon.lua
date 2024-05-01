return {
  "theprimeagen/harpoon",
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon.mark").add_file()
      end,
      { silent = true, noremap = true },
    },
    {
      "<leader><leader>",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      { silent = true, noremap = true },
    },
    {
      "<C-a>",
      function()
        require("harpoon.ui").nav_next()
      end,
      { silent = true, noremap = true },
    },
    {
      "<leader>A",
      function()
        require("harpoon.mark").clear_all()
      end,
      { silent = true, noremap = true },
    },
  },
}
