return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "olimorris/neotest-rspec",
    },
    config = function()
      require("neotest").setup({
        adapters = { require("neotest-rspec") },
        discovery = { enabled = false },
      })
    end,
    keys = function()
      vim.api.nvim_create_user_command("RunTest", function()
        require("neotest").run.run()
      end, {})

      vim.api.nvim_create_user_command("RunLast", function()
        require("neotest").run.run_last()
      end, {})

      vim.api.nvim_create_user_command("RunFile", function()
        require("neotest").run.run(vim.fn.expand("%"))
      end, {})

      vim.api.nvim_create_user_command("StopTest", function()
        require("neotest").run.stop()
      end, {})

      vim.api.nvim_create_user_command("Attach", function()
        require("neotest").run.attach()
      end, {})

      vim.api.nvim_create_user_command("TestPanel", function()
        require("neotest").output_panel.toggle()
      end, {})

      vim.api.nvim_create_user_command("ToggleWatch", function()
        require("neotest").watch.toggle()
      end, {})

      vim.api.nvim_create_user_command("WatchFile", function()
        require("neotest").watch.toggle(vim.fn.expand("%"))
      end, {})

      vim.api.nvim_create_user_command("StopWatch", function()
        require("neotest").watch.stop()
      end, {})

      vim.api.nvim_create_user_command("TestSummary", function()
        require("neotest").summary.toggle()
      end, {})

      vim.api.nvim_create_user_command("RunMarked", function()
        require("neotest").summary.run_marked()
      end, {})
    end,
  },
}
