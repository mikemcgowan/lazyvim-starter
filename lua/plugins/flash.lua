return {
  "folke/flash.nvim",
  keys = {
    { "<leader>sf", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  },
}
