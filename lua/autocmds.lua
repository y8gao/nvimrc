require "nvchad.autocmds"

-- Open Neo-tree on startup and focus active buffer
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("NeoTreeStartup", { clear = true }),
  callback = function()
    vim.schedule(function()
      vim.cmd "Neotree"
      -- Move focus to the active buffer (not neo-tree)
      vim.cmd "wincmd l"
    end)
  end,
})
