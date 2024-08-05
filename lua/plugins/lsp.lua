return {
  { "mihyaeru21/nvim-lspconfig-bundler" },
  {
    "neovim/nvim-lspconfig",
    format = {
      timeout_ms = 800,
    },
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
