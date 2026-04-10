vim.pack.add({
  { src = "https://github.com/folke/flash.nvim" },
})

require("flash").setup({})

local map = vim.keymap.set

local flash = require("flash")

map({ "n", "x", "o" }, "s", flash.jump, { desc = "Flash" })
map({ "n", "x", "o" }, "S", flash.treesitter, { desc = "Flash Treesitter" })
map("o", "r", flash.remote, { desc = "Remote Flash" })
map({ "o", "x" }, "R", flash.treesitter_search, { desc = "Treesitter Search" })
map("c", "<c-s>", flash.toggle, { desc = "Toggle Flash Search" })
