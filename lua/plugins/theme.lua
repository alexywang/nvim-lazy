return {
  {
    "luisiacc/gruvbox-baby",
    config = function()
      vim.api.nvim_create_user_command("Baby", function()
        vim.cmd("colorscheme gruvbox-baby")
        vim.o.background = "dark"
      end, {})
    end,
  },
  { "xiyaowong/transparent.nvim" },
  { "marko-cerovac/material.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "rose-pine/neovim" },
  { "sainnhe/gruvbox-material" },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.api.nvim_create_user_command("Light", function()
        vim.cmd("colorscheme gruvbox")
        vim.o.background = "light"
      end, {})
    end,
  },
}
