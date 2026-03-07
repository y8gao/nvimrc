return {
  height = 0.3,
  width = 0.6,
  border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
  list = {
    position = "right",
  },
  preview = {
    max_height = 0.3,
  },
  theme = {
    enable = true,
    mode = "auto",
  },
  mappings = {
    list = {
      j = "move_cursor_down",
      k = "move_cursor_up",
      ["<Down>"] = "move_cursor_down",
      ["<Up>"] = "move_cursor_up",
      ["<Tab>"] = "preview_scroll_win_down",
      ["<S-Tab>"] = "preview_scroll_win_up",
      ["q"] = "close",
    },
    preview = {
      q = "close",
      ["<Tab>"] = "preview_scroll_down",
      ["<S-Tab>"] = "preview_scroll_up",
    },
  },
  hooks = {},
}
