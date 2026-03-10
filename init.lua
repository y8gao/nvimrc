vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

if vim.g.neovide then
  vim.g.neovide_opacity = 0.9
  vim.o.guifont = "SauceCodePro Nerd Font Mono:h12"
  vim.g.neovide_refresh_rate = 60
  
  -- Smooth cursor animation
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_length = 0.5
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_blink = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  
  -- Window options
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_profiler = false
  
  -- Scroll animation (smooth scrolling)
  vim.g.neovide_scroll_animation_length = 0.3
  
  -- Background blur effect
  -- vim.g.neovide_background_color = "#11121d"
  vim.g.neovide_blur = 90

  -- title bar color
  vim.g.neovide_title_background_color = string.format(
    "%x",
    vim.api.nvim_get_hl(0, {id=vim.api.nvim_get_hl_id_by_name("Normal")}).bg
  )
  
  vim.g.neovide_title_text_color = "white"
  
  -- Padding around editor
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 10
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 10
end
-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)
