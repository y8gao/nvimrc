return {
  open_mapping = [[<C-\>]],
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  persist_mode = true,
  direction = "float",
  float_opts = {
    border = "curved",
    width = 120,
    height = 30,
    zindex = 1,
  },
  winbar = {
    enabled = true,
    name_formatter = function(term)
      return term.name
    end,
  },
}
