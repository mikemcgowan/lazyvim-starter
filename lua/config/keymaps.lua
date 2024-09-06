-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", ";", ":")
map("i", "jk", "<ESC>")
map({ "n", "x", "o" }, "s", "s", { noremap = true })

map("n", "<leader>ct", function()
  local clients = vim.lsp.get_clients()
  if #clients > 0 then
    for _, client in pairs(clients) do
      vim.cmd("LspStop " .. client.name)
      print("LSP " .. client.name .. " stopped")
    end
  else
    vim.cmd("LspStart")
    print("LSP started")
  end
end, { desc = "Toggle LSP" })
