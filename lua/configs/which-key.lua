return {
  preset = "helix",
  delay = 300,
  plugins = {
    marks = true,
    registers = true,
    presets = {
      operators = true,
      motions = true,
      text_objects = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  win = {
    no_overlap = true,
    padding = { 1, 2 },
    zindex = 1000,
  },
  layout = {
    align = "center",
    width = { min = 20, max = 50 },
  },
  spec = {
    { "<leader>f", group = "Fuzzy Finder" },
    { "<leader>h", group = "Gitsigns" },
    { "<leader>x", group = "Trouble" },
    { "<leader>c", group = "Code" },
  },
}
