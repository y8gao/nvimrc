return {
  progress = {
    pollIntervalMs = 0,
    suppressOnInsert = true,
    ignoreEmptyMessage = false,
    display = {
      render_limit = 16,
      done_ttl = 3,
      done_icon = "✓",
      done_hlgroup = "DiagnosticOk",
      progress_ttl = math.huge,
      progress_icon = { pattern = "dots", period = 1 },
      progress_hlgroup = "Question",
      align = {
        bottom = true,
      },
      lpad = 0,
      rpad = 0,
      gap = 1,
    },
  },

  notification = {
    poll_rate = 10,
    filter = vim.log.levels.INFO,
    override_vim_notify = false,
    display = {
      top_down = true,
      max_height = 5,
      max_width = 40,
      x_padding = 2,
      y_padding = 1,
      align = "right",
      border = "rounded",
      icon = "●",
      icon_on_left = true,
    },
    window_config = {
      relative = "editor",
      anchor = "NE",
      width = 40,
      height = 5,
      border = "rounded",
    },
  },
}
