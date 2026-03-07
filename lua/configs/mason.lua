return {
  ui = {
    check_updates = false,
    border = "rounded",
    width = 0.8,
    height = 0.9,
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}
