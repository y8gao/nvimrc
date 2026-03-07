return {
  automatic_installation = true,
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup {}
    end,
  },
  ensure_installed = {
    "html",
    "cssls",
    "pyright",
    "ts_ls",
    "rust_analyzer",
    "gopls",
    "marksman",
    "bashls",
    "clangd",
  },
}
