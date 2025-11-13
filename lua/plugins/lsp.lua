return {
  { "mihyaeru21/nvim-lspconfig-bundler" },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "ember-language-server")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          cmd = { "bundle", "exec", "solargraph", "stdio" },
          prefix = "solargraph",
        },
        ember = {
          filetypes = { "handlebars", "glimmer", "ember", "javascript", "typescript" },
          root_dir = require("lspconfig").util.root_pattern("ember-cli-build.js", "package.json"),
        },
      },
    },
  },
}
