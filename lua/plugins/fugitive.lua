return {
  { "tpope/vim-fugitive" },
  { "tpope/vim-rhubarb" },
  {
    "shumphrey/fugitive-gitlab.vim",
    config = function()
      vim.g.fugitive_gitlab_domains = {
        ["ssh.gitlab.aws.dev"] = "https://gitlab.aws.dev",
      }
    end,
  },
}
