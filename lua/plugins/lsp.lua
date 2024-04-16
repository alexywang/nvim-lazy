return {
  { "mihyaeru21/nvim-lspconfig-bundler" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          cmd = { "bundle", "exec", "solargraph", "stdio" },
          prefix = "solargraph",
        },
      },
    },
  },
}
