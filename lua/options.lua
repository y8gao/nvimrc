require "nvchad.options"

-- add yours here!

local o = vim.o
o.showtabline = 2
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Clipboard configuration for Neovide
vim.opt.clipboard:append("unnamedplus")
if vim.g.neovide then
  -- Windows: Shift+Insert for paste
  if vim.fn.has("win32") == 1 then
    vim.keymap.set("i", "<S-Insert>", '<C-r>+', { noremap = true, silent = true })
  end
  
  -- Mac: Cmd+V for paste
  if vim.fn.has("mac") == 1 then
    vim.g.neovide_input_use_logo = true
    vim.keymap.set("i", "<D-v>", '<C-r>+', { noremap = true, silent = true })
  end
end
