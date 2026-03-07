return {
  auto_clean_after_session_restore = true,
  close_if_last_window = false,
  enable_git_status = true,
  enable_modified_markers = true,
  enable_diagnostics = false,

  window = {
    position = "left",
    width = 30,
    mappings = {
      ["<space>"] = "toggle_node",
      ["<2-LeftMouse>"] = "open",
      ["<CR>"] = "open",
      ["<C-v>"] = "open_vsplit",
      ["<C-s>"] = "open_split",
      ["C"] = "close_node",
      ["z"] = "close_all_nodes",
      ["a"] = { "add", config = { show_path = "relative" } },
      ["d"] = "delete",
      ["r"] = "rename",
      ["y"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["q"] = "close_window",
    },
  },

  filesystem = {
    filtered_items = {
      visible = false,
      hide_dotfiles = false,
      hide_gitignored = true,
    },
    follow_current_file = {
      enabled = true,
    },
    use_libuv_file_watcher = true,
  },

  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 1,
      with_markers = true,
      indent_marker = "|",
      last_indent_marker = "`",
      highlight = "NeoTreeIndentMarker",
      expander_collapsed = ">",
      expander_expanded = "v",
    },
    icon = {
      folder_closed = "+",
      folder_open = "-",
      folder_empty = "~",
      default = "*",
    },
    modified = {
      symbol = "[+]",
      highlight = "NeoTreeModified",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
      highlight = "NeoTreeFileName",
    },
    git_status = {
      symbols = {
        added = "✚",
        deleted = "✖",
        modified = "",
        renamed = "",
        untracked = "?",
        ignored = "◌",
        unstaged = "",
        staged = "",
        conflict = "󰘬",
      },
    },
  },
}
