return {
  {
    "mihyaeru21/nvim-lspconfig-bundler",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("lspconfig-bundler").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    -- Ensure this loads after lspconfig-bundler
    after = "nvim-lspconfig-bundler",
  },
}
