local lspconfig = require("lspconfig")

require("lspconfig-bundler").setup()

lspconfig.solargraph.setup({
  cmd = { "bundle", "exec", "solargraph", "stdio" },
})
