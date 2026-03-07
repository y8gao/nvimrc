local colors = {
  bg = "#1e222a",
  fg = "#abb2bf",
  yellow = "#e5c07b",
  cyan = "#56b6c2",
  darkblue = "#282c34",
  green = "#98c379",
  orange = "#d19a66",
  violet = "#c678dd",
  magenta = "#c678dd",
  blue = "#61afef",
  red = "#e06c75",
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand "%:t") ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand "%:p:h"
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0
  end,
}

local config = {
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    theme = {
      normal = {
        a = { fg = colors.darkblue, bg = colors.blue, gui = "bold" },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
      },
      insert = {
        a = { fg = colors.darkblue, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.darkblue },
      },
      visual = {
        a = { fg = colors.darkblue, bg = colors.magenta, gui = "bold" },
        b = { fg = colors.fg, bg = colors.darkblue },
      },
      replace = {
        a = { fg = colors.darkblue, bg = colors.red, gui = "bold" },
        b = { fg = colors.fg, bg = colors.darkblue },
      },
      command = {
        a = { fg = colors.darkblue, bg = colors.orange, gui = "bold" },
        b = { fg = colors.fg, bg = colors.darkblue },
      },
      inactive = {
        a = { fg = colors.violet, bg = colors.darkblue, gui = "bold" },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
      },
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      {
        "branch",
        cond = conditions.check_git_workspace,
        icon = " ",
      },
      {
        "diff",
        cond = conditions.hide_in_width,
        symbols = { added = " ", modified = " ", removed = " " },
      },
    },
    lualine_c = {
      {
        "filename",
        cond = conditions.buffer_not_empty,
        file_status = true,
        newline_status = false,
        symbols = {
          modified = " ●",
          readonly = " 🔒",
          unnamed = "[No Name]",
        },
      },
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = " ", warn = " ", info = " ", hint = " " },
        cond = conditions.hide_in_width,
      },
    },
    lualine_x = {
      {
        "encoding",
        cond = conditions.hide_in_width,
      },
      {
        "fileformat",
        cond = conditions.hide_in_width,
        symbols = {
          unix = "LF",
          dos = "CRLF",
          mac = "CR",
        },
      },
      {
        "filetype",
        cond = conditions.hide_in_width,
      },
    },
    lualine_y = {
      {
        "progress",
      },
    },
    lualine_z = {
      {
        "location",
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "neo-tree", "trouble" },
}

return config

