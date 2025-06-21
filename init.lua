require("punkmonk")

-- This has to be DUPLICATED here ( for now ) or it stops working fmlmao
vim.cmd([[

autocmd FileType * set formatoptions-=ro

hi! clear
colorscheme vim

" hi! TabLine ctermfg=black ctermbg=black cterm=NONE
hi! TabLine ctermfg=green ctermbg=NONE cterm=NONE
hi! TabLineFill ctermfg=black ctermbg=NONE cterm=NONE
hi! TabLineSel ctermfg=black ctermbg=green cterm=NONE

hi! Search ctermbg=green ctermfg=black cterm=NONE
hi! IncSearch ctermbg=yellow ctermfg=black cterm=NONE

hi! ColorColumn ctermbg=black
hi! Visual ctermfg=black ctermbg=magenta

hi! link SignColumn Normal

hi! Type ctermfg=blue guifg=blue
hi! MoreMsg ctermfg=blue guifg=blue
hi! preproc  ctermfg=blue guifg=blue
hi! specialkey ctermfg=green guifg=green
hi! underlined ctermfg=green guifg=green
hi! question ctermfg=green guifg=green

hi! Folded ctermfg=grey ctermbg=black guifg=grey guibg=black
hi! FoldColumn ctermfg=grey ctermbg=black guifg=grey guibg=black

hi! StatusLine ctermfg=green ctermbg=NONE cterm=NONE
hi! ErrorMsg ctermfg=magenta ctermbg=black

"set tabline="ctermfg=green ctermbg=black %T"

" This is to simply disable BOLD fonts within nvim
" .. because bold items are impossible to configure in highlight
" Setting background=light seems to fix BUT changes the colors of 
" other items to COLORS OUTSIDE COLORSCHEME :[
" reddit.com/neovim/comments/nnwfvp/why_is_neovim_rendering_fonts_in_different_weight
set background=light

hi! LineNr gui=NONE ctermfg=yellow "links LineNrAbove, LineNrBelow    
hi! CursorLineNr gui=NONE ctermbg=blue
hi! Statement gui=NONE ctermfg=blue " links Conditional, Repeat, Label, Operator, Keyword, Exception
" Whatever. It's fixed.

" Neotree
hi! NeoTreeNormal ctermfg=green ctermbg=none
hi! NeoTreeNormalNC ctermfg=green ctermbg=none
hi! NeoTreeEndOfBuffer ctermfg=green ctermbg=none

]])

vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg="black", ctermfg="white" })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermfg="white", ctermbg="black" })
vim.api.nvim_set_hl(0, "FloatTitle", { ctermfg="green", ctermbg="black" })
vim.api.nvim_set_hl(0, "FloatFooter", { ctermfg="green", ctermbg="black" })

-- noice
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { ctermfg="red", ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIconInput", { ctermfg="red", ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { ctermfg="red", ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderInput", { ctermfg="red", ctermbg="none" })

vim.api.nvim_set_hl(0, "NoicePopup", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "NoicePopupBorder", { ctermfg="yellow", ctermbg="none" })

vim.api.nvim_set_hl(0, "lualine_b_diff_added_normal", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_insert", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_visual", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_replace", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_command", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_terminal", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_inactive", { ctermfg="yellow", ctermbg="none" })
