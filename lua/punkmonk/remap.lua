vim.cmd('ca vimrc /home/roe/.config/nvim/')
vim.g.mapleader = " "
vim.cmd('abb tn tabnew')
vim.cmd('abb tm tabmove')

vim.keymap.set("n", "<leader><leader>", vim.cmd.Ex)
--vim.keymap.set("n", "<leader>p", vim.cmd([[:set syn=python]]))
--vim.keymap.set("n", "<leader>p", [[:set ft=python<CR>]], { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>j", [[:set ft=javascript<CR>]], { noremap = true, silent = true })

-- Spawn newlines above/below
vim.keymap.set("n", "<leader>O", "O<Esc>j")
vim.keymap.set("n", "<leader>o", "o<Esc>k")

vim.keymap.set("i", "{<cr>","{<cr>}<c-o><s-o>")
vim.keymap.set("i", "(<cr>","(<cr>)<c-o><s-o>")
vim.keymap.set("i", "[<cr>","[<cr>]<c-o><s-o>")

-- find these colorschemes
--vim.cmd.colorscheme('habamax')

-- rustacean creations
vim.keymap.set("n", "<leader>rp", "jOprintln!(\"\");<Esc>hhi")
vim.keymap.set("n", "<leader>rc", "i/*<cr>/<Esc>k$a<space>")

-- neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>" )
