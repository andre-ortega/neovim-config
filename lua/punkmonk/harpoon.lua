local harpoon = require("harpoon").setup({
  menu = {
    width = vim.api.nvim_win_get_width(0) - 4,
  }
})

local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>hh", ":lua require(\"harpoon.ui\").toggle_quick_menu()<cr>")
vim.keymap.set("n", "<leader>ha", ":lua require(\"harpoon.mark\").add_file()<cr>")
vim.keymap.set("n", "<leader>hn", ":lua require(\"harpoon.ui\").nav_next<cr>")
vim.keymap.set("n", "<leader>hp", ":lua require(\"harpoon.ui\").nav_prev<cr>")
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
