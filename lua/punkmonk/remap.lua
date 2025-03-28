
vim.g.mapleader = " "

vim.cmd('ca vimrc /home/roe/.config/nvim/')

vim.cmd('abb tn tabnew')
vim.cmd('abb tm tabmove')
vim.cmd('abb al Alpha')

--vim.keymap.set("n", "<leader><leader>", vim.cmd.Ex)
--vim.keymap.set("n", "<leader>p", vim.cmd([[:set syn=python]]))
--vim.keymap.set("n", "<leader>p", [[:set ft=python<CR>]], { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>j", [[:set ft=javascript<CR>]], { noremap = true, silent = true })

-- Clear search
vim.keymap.set("n", "<leader>n", ":noh<cr>")

-- Spawn newlines above/below
vim.keymap.set("n", "<leader>O", "O<Esc>j")
vim.keymap.set("n", "<leader>o", "o<Esc>k")

vim.keymap.set("i", "{<cr>","{<cr>}<c-o><s-o>")
vim.keymap.set("i", "(<cr>","(<cr>)<c-o><s-o>")
vim.keymap.set("i", "[<cr>","[<cr>]<c-o><s-o>")

-- neotree
vim.keymap.set("n", "<leader>e", ":Neotree focus position=right<cr>" )
vim.keymap.set("n", "<leader><cr>", ":Neotree toggle position=right<cr>" )
vim.keymap.set("n", "<leader><leader>", ":Neotree toggle position=right<cr>")
vim.keymap.set("n", "<leader>b", ":Neotree toggle show buffers right<cr>")

