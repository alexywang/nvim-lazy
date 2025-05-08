-- Keymaps are automatically loaded on the VeryLazy event Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- move shit up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- yank to real buffer
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- split panes
vim.keymap.set("n", "<leader>sv", vim.cmd.split, { noremap = true })
vim.keymap.set("n", "<leader>ss", vim.cmd.vsplit, { noremap = true })
vim.keymap.set("n", "<C-e>", ":wincmd w<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<C-e>", "<C-\\><C-n>:wincmd w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", ":wincmd l<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Up>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", ":wincmd j<CR>", { noremap = true, silent = true })

-- disable annoying shit
vim.keymap.set("n", "<A-j>", "", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "", { noremap = true, silent = true })

-- copy path
vim.api.nvim_create_user_command("CopyRelPath", "call setreg('+', expand('%'))", {})
vim.keymap.set("n", "<leader>p", ":CopyRelPath<CR>", { noremap = true, silent = true })

--show diagnostic
vim.keymap.set("n", "<leader>dd", "<cmd> lua vim.diagnostic.open_float() <CR>", { noremap = true, silent = true })

-- Yank filename under cursor using the same logic as 'gf'
vim.keymap.set("n", "<leader>yf", function()
  local filename = vim.fn.expand("<cfile>") -- gf uses this too
  if filename ~= "" then
    vim.fn.setreg("+", filename) -- system clipboard
    print("Yanked to clipboard: " .. filename)
  else
    print("No valid filename under cursor")
  end
end, { desc = "Yank filename under cursor" })

vim.keymap.set("n", "<leader>of", function()
  local filename = vim.fn.expand("<cfile>")

  if vim.fn.filereadable(filename) ~= 1 then
    print("Not a valid file: " .. filename)
    return
  end

  -- Search for a non-terminal window
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    local buftype = vim.api.nvim_buf_get_option(buf, "buftype")
    if buftype == "" then -- Normal buffer
      -- Focus that window and open the file there
      vim.api.nvim_set_current_win(win)
      vim.cmd("edit " .. vim.fn.fnameescape(filename))
      return
    end
  end

  -- Fallback: open in a vsplit if no other window is available
  vim.cmd("vsplit " .. vim.fn.fnameescape(filename))
end, { desc = "Open file under cursor in a normal buffer" })
