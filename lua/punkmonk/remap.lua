
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
vim.keymap.set("n", "<leader>O", "O<Esc>j0")
vim.keymap.set("n", "<leader>o", "o<Esc>k0")

-- typewriter newline
vim.keymap.set("n", "<leader>;", "bhi<cr><Esc>>>A")

vim.keymap.set("i", "{<cr>","{<cr>}<c-o><s-o>")
vim.keymap.set("i", "(<cr>","(<cr>)<c-o><s-o>")
vim.keymap.set("i", "[<cr>","[<cr>]<c-o><s-o>")

-- neotree
vim.keymap.set("n", "<leader>e", ":Neotree focus position=float<cr>" )
vim.keymap.set("n", "<leader><cr>", ":Neotree toggle position=float<cr>" )
vim.keymap.set("n", "<leader><leader>", ":Neotree toggle position=float<cr>")
vim.keymap.set("n", "<leader>b", ":Neotree toggle show buffers float<cr>")

-- vsnip - jump to next snippet jump point
local map = vim.keymap.set
map({ "i", "s" }, "<S-tab>", function()
  if vim.fn["vsnip#jumpable"](1) == 1 then
    return '<plug>(vsnip-jump-next)'
  else
    return "<tab>"
  end
end, {expr = true})
