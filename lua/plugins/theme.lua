return {
  { "xiyaowong/transparent.nvim" },
  { "marko-cerovac/material.nvim" },
  { "sainnhe/gruvbox-material" },
  {
    "rose-pine/neovim",
    config = function()
      vim.api.nvim_create_user_command("Rose", function()
        vim.cmd("colorscheme rose-pine")
        vim.o.background = "dark"
      end, {})
    end,
  },
  {
    "luisiacc/gruvbox-baby",
    config = function()
      vim.api.nvim_create_user_command("Baby", function()
        vim.cmd("colorscheme gruvbox-baby")
        vim.o.background = "dark"
      end, {})
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    config = function()
      vim.api.nvim_create_user_command("Cyber", function()
        vim.cmd("colorscheme cyberdream")
        vim.o.background = "dark"
      end, {})
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.api.nvim_create_user_command("Light", function()
        vim.cmd("colorscheme gruvbox")
        vim.o.background = "light"
      end, {})
    end,
  },
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      vim.api.nvim_create_user_command("Zen", function()
        vim.cmd("colorscheme zenbones")
        vim.o.background = "dark"
      end, {})

      vim.api.nvim_create_user_command("ZenLight", function()
        vim.o.termguicolors = true
        vim.cmd("colorscheme zenbones")
        vim.o.background = "light"
      end, {})
    end,
  },
  {
    "savq/melange-nvim",
    config = function()
      vim.api.nvim_create_user_command("Melange", function()
        vim.cmd("colorscheme melange")
        vim.o.background = "dark"
      end, {})
    end,
  },
}
