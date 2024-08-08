return {
  "f-person/git-blame.nvim",
  config = function()
    -- Initially disable virtual text
    vim.g.gitblame_display_virtual_text = 0

    -- Function to toggle virtual text
    function _G.toggle_git_blame_virtual_text()
      if vim.g.gitblame_display_virtual_text == 0 then
        vim.g.gitblame_display_virtual_text = 1
        print("Git blame virtual text enabled")
      else
        vim.g.gitblame_display_virtual_text = 0
        print("Git blame virtual text disabled")
      end
    end

    -- Create the command :Blame to toggle virtual text
    vim.cmd("command! Blame lua toggle_git_blame_virtual_text()")
  end,
}
