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
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                "describe",
                "it",
                "before_each",
                "after_each",
                "pending",
              },
            },
          },
        },
      },
    },
  },
}
