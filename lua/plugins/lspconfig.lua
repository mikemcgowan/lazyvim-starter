return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      kotlin_language_server = {
        autostart = false,
        settings = { kotlin = { compiler = { jvm = { target = "17" } } } },
      },
      bashls = {},
      lemminx = {},
    },
  },
}
