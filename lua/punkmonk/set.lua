vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.cmd([[

autocmd FileType * set formatoptions-=ro

hi! clear
colorscheme vim

"hi! TabLine ctermfg=black ctermbg=NONE cterm=NONE
hi! TabLine ctermfg=green ctermbg=NONE cterm=NONE
hi! TabLineFill ctermfg=black ctermbg=NONE cterm=NONE
hi! TabLineSel ctermfg=black ctermbg=green cterm=NONE

hi! Search ctermbg=green ctermfg=black cterm=NONE
hi! IncSearch ctermbg=magenta ctermfg=black cterm=NONE

hi! ColorColumn ctermbg=black
hi! Visual ctermfg=black ctermbg=magenta

hi! link SignColumn Normal

hi! Type ctermfg=blue guifg=blue
hi! MoreMsg ctermfg=blue guifg=blue
hi! preproc  ctermfg=blue guifg=blue
hi! specialkey ctermfg=green guifg=green
hi! underlined ctermfg=green guifg=green
hi! question ctermfg=green guifg=green

hi! Folded ctermfg=green ctermbg=black guifg=black guibg=black
hi! FoldColumn ctermfg=green ctermbg=black guifg=black guibg=black

hi! StatusLine ctermfg=green ctermbg=NONE cterm=NONE
hi! ErrorMsg ctermfg=magenta ctermbg=black

"set tabline="ctermfg=green ctermbg=black %T"

" This is to simply disable BOLD fonts within nvim
" .. because bold items are impossible to configure in highlight
" Setting background=light seems to fix BUT changes the colors of 
" other items to COLORS OUTSIDE COLORSCHEME :[
" reddit.com/r/neovim/comments/nnwfvp/why_is_neovim_rendering_fonts_in_different_weight
set background=light

hi! LineNr gui=NONE ctermfg=yellow "links LineNrAbove, LineNrBelow    
hi! CursorLineNr gui=NONE ctermbg=blue
hi! Statement gui=NONE ctermfg=blue " links Conditional, Repeat, Label, Operator, Keyword, Exception
" Whatever. It's fixed.

" Neotree
hi! NeoTreeNormal ctermfg=green ctermbg=none
hi! NeoTreeNormalNC ctermfg=green ctermbg=none
hi! NeoTreeEndOfBuffer ctermfg=green ctermbg=none

" Don't open folds when navigating with { and }
set foldopen -=block
" set so=999
set so=5
]])

vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg="white", ctermfg="white" })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermfg="white", ctermbg="black" })
vim.api.nvim_set_hl(0, "FloatTitle", { ctermfg="green", ctermbg="black" })
vim.api.nvim_set_hl(0, "FloatFooter", { ctermfg="green", ctermbg="black" })

vim.filetype.add({
  pattern = {
    ['*.ejs'] = 'html',
  },
})
