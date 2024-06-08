require("punkmonk")

vim.cmd([[

autocmd FileType * set formatoptions-=ro

hi! clear
colorscheme vim

hi! TabLine ctermfg=black ctermbg=black cterm=NONE
hi! TabLineFill ctermfg=black ctermbg=black cterm=NONE
hi! TabLineSel ctermfg=black ctermbg=green cterm=NONE

hi! Search ctermbg=green ctermfg=black cterm=NONE
hi! IncSearch ctermbg=magenta ctermfg=black cterm=NONE

hi! ColorColumn ctermbg=black
hi! TabLine ctermfg=green ctermbg=black
hi! Visual ctermfg=black ctermbg=magenta

hi! link SignColumn Normal

hi! Type ctermfg=blue guifg=blue
hi! MoreMsg ctermfg=blue guifg=blue
hi! preproc  ctermfg=blue guifg=blue
hi! specialkey ctermfg=green guifg=green
hi! underlined ctermfg=green guifg=green
hi! question ctermfg=green guifg=green

hi! Folded ctermfg=green ctermbg=grey guifg=black guibg=grey
hi! FoldColumn ctermfg=green ctermbg=grey guifg=black guibg=grey

hi! StatusLIne ctermfg=green ctermbg=black
hi! ErrorMsg ctermfg=magenta ctermbg=black

set tabline="ctermfg=green ctermbg=black %T"

" This is to simply disable BOLD fonts within nvim
" .. because bold items are impossible to configure in highlight
" Setting background=light seems to fix BUT changes the colors of 
" other items to COLORS OUTSIDE COLORSCHEME :[
" reddit.com/neovim/comments/nnwfvp/why_is_neovim_rendering_fonts_in_different_weight
set background=light

hi! LineNr gui=NONE ctermfg=blue "links LineNrAbove, LineNrBelow    
hi! CursorLineNr gui=NONE ctermbg=blue
hi! Statement gui=NONE ctermfg=blue " links Conditional, Repeat, Label, Operator, Keyword, Exception
" Whatever. It's fixed.

" Neotree
hi! NeoTreeNormal ctermfg=green ctermbg=black
hi! NeoTreeNormalNC ctermfg=green ctermbg=none
hi! NeoTreeEndOfBuffer ctermfg=green ctermbg=none

]])
