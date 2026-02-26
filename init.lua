require("punkmonk")

-- highlights do not work in set.lua
vim.cmd([[

autocmd FileType * set formatoptions-=ro

" hi! clear
colorscheme vim

hi! Search ctermbg=2 ctermfg=black cterm=NONE
hi! IncSearch ctermbg=magenta ctermfg=black cterm=NONE

hi! ColorColumn ctermbg=0
hi! Visual ctermfg=black ctermbg=magenta

hi! link SignColumn Normal

" hi! Type ctermfg=blue guifg=blue
" hi! MoreMsg ctermfg=blue guifg=blue
" hi! preproc  ctermfg=blue guifg=blue
" hi! specialkey ctermfg=green guifg=green
" hi! underlined ctermfg=green guifg=green
" hi! question ctermfg=green guifg=green

hi! Folded ctermfg=grey ctermbg=black guifg=grey guibg=black
hi! FoldColumn ctermfg=grey ctermbg=black guifg=grey guibg=black

hi! StatusLine ctermfg=green ctermbg=NONE cterm=NONE
hi! ErrorMsg ctermfg=magenta ctermbg=black

hi! Comment ctermfg=cyan ctermbg=NONE

" This is to simply disable BOLD fonts within nvim
" .. because bold items are impossible to configure in highlight
" Setting background=light seems to fix BUT changes the colors of 
" other items to COLORS OUTSIDE COLORSCHEME :[
" reddit.com/r/neovim/comments/nnwfvp/why_is_neovim_rendering_fonts_in_different_weight
" Whatever. It's fixed.
set background=light

hi! LineNr gui=NONE ctermfg=11 "links LineNrAbove, LineNrBelow
hi! CursorLineNr gui=NONE ctermbg=blue
hi! Statement gui=NONE ctermfg=2 " links Conditional, Repeat, Label, Operator, Keyword, Exception

" editing for gruvbox
hi! Conditional gui=NONE ctermfg=3 " if else switch case
hi! Operator gui=NONE ctermfg=4 " + - = != etc.
hi! Keyword gui=NONE ctermfg=1 " return, const
hi! Repeat gui=NONE ctermfg=3 " for while
hi! Function gui=NONE ctermfg=green " for while
" hi! Identifier gui=NONE ctermfg=2 " for while

" Neotree
hi! NeoTreeNormal ctermfg=green ctermbg=none
hi! NeoTreeNormalNC ctermfg=green ctermbg=none
hi! NeoTreeEndOfBuffer ctermfg=green ctermbg=none

" Possible color fixes and debugging options
" set t_Co=256
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" tears in the rain
" https://vi.stackexchange.com/questions/45129/is-neovim-able-to-use-terminal-profile-colors
set notermguicolors
]])

vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg="black", ctermfg="white" })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermfg="white", ctermbg="black" })
vim.api.nvim_set_hl(0, "FloatTitle", { ctermfg="green", ctermbg="black" })
vim.api.nvim_set_hl(0, "FloatFooter", { ctermfg="green", ctermbg="black" })

vim.api.nvim_set_hl(0, "TabLine", { ctermfg=2, ctermbg="none" })
vim.api.nvim_set_hl(0, "TabLineFill", { ctermfg="black", ctermbg="none" })
vim.api.nvim_set_hl(0, "TabLineSel", { ctermfg="black", ctermbg=2 })

-- noice
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { ctermfg=2, ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIconInput", { ctermfg=2, ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { ctermfg=2, ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderInput", { ctermfg=5, ctermbg="none" })

vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderSearch", { ctermfg=1, ctermbg="none" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { ctermfg=1, ctermbg="none" })

vim.api.nvim_set_hl(0, "NoicePopup", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "NoicePopupBorder", { ctermfg="yellow", ctermbg="none" })

vim.api.nvim_set_hl(0, "lualine_b_diff_added_normal", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_insert", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_visual", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_replace", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_command", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_terminal", { ctermfg="yellow", ctermbg="none" })
vim.api.nvim_set_hl(0, "lualine_b_diff_added_inactive", { ctermfg="yellow", ctermbg="none" })

vim.api.nvim_set_hl(0, "TelescopeSelection", { ctermfg="cyan", ctermbg="none" })
