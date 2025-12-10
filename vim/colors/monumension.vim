" Named after the great Monumension album from Enslaved which inspired the
" choice of colors (except for the yellow and orange parts, but those need
" distinctiveness)
"
" There are custom syntax groups, defined there:
" https://github.com/boucherm/dotvim/tree/master/.vim/after/syntax
"
" Background color of the term is supposed to be dark grey (#212121 or grey13)
"
" Some of urxvt 16 base colors were awful, I changed those in the .Xresources file:
" !black
" URxvt.color0:                           #2e3436
" URxvt.color8:                           #050505
" !red
" URxvt.color1:                           #cc2525
" URxvt.color9:                           #ef2929
" !green
" URxvt.color2:                           #4e9a06
" URxvt.color10:                          #8Ae234
" !yellow
" URxvt.color3:                           #e1a310
" URxvt.color11:                          #ebca6b
" !blue
" URxvt.color4:                           #3f6691
" URxvt.color12:                          #668dab
" !magenta
" URxvt.color5:                           #75507B
" URxvt.color13:                          #494573
" !cyan
" URxvt.color6:                           #06989a
" URxvt.color14:                          #52d8ce
" !white
" URxvt.color7:                           #DCDCCC
" URxvt.color15:                          #FFFFFF
"
" TODO: create some groups using the 'link' command (see :help linK)
"
" There may be some awful flashy colors, those are attempts at identifying
" to which elements some names correspond

highlight clear
syntax reset
let g:colors_name = "monumension"
set background=dark
set t_Co=256

hi Normal           cterm=NONE        ctermbg=234  ctermfg=244
hi Comment          cterm=italic      ctermbg=NONE ctermfg=22
hi Statement        cterm=NONE        ctermbg=NONE ctermfg=60

hi Type             cterm=NONE        ctermbg=NONE ctermfg=61
hi Number           cterm=NONE        ctermbg=NONE ctermfg=30
hi Float            cterm=NONE        ctermbg=NONE ctermfg=30
hi Special          cterm=NONE        ctermbg=NONE ctermfg=5

hi LineNr           cterm=NONE        ctermbg=233  ctermfg=23
hi SignColumn       cterm=NONE        ctermbg=232  ctermfg=NONE
hi ColorColumn      cterm=NONE        ctermbg=234  ctermfg=NONE

hi Search           cterm=NONE        ctermbg=16   ctermfg=242
hi Visual           cterm=NONE        ctermbg=16   ctermfg=NONE

hi Pmenu            cterm=NONE        ctermbg=234  ctermfg=241
hi PmenuSel         cterm=NONE        ctermbg=233  ctermfg=2
hi PmenuSbar        cterm=NONE        ctermbg=232  ctermfg=NONE
hi PmenuThumb       cterm=NONE        ctermbg=233  ctermfg=NONE

" ↓ Too bad, the folded highlights also affect the linenumber column
hi Folded           cterm=NONE        ctermbg=NONE ctermfg=237
hi PreProc          cterm=NONE        ctermbg=NONE ctermfg=23
hi Todo             cterm=bold,italic ctermbg=16   ctermfg=88
hi Directory        cterm=NONE        ctermbg=NONE ctermfg=4
hi MatchParen       cterm=NONE        ctermbg=53   ctermfg=NONE
hi Title            cterm=NONE        ctermbg=NONE ctermfg=88
hi Menu             cterm=NONE        ctermbg=200  ctermfg=213
hi Wildmenu         cterm=NONE        ctermbg=60   ctermfg=232
hi ErrorMsg         cterm=NONE        ctermbg=90   ctermfg=235
hi Error            cterm=NONE        ctermbg=232  ctermfg=1
hi SpecialKey       cterm=bold        ctermbg=NONE ctermfg=13
hi Conceal          cterm=NONE        ctermbg=234  ctermfg=4

" Cursor
hi Cursor           cterm=bold        ctermbg=NONE ctermfg=NONE
hi CursorLine       cterm=NONE        ctermbg=233  ctermfg=NONE
hi CursorLineNr     cterm=bold        ctermbg=232  ctermfg=64
hi CursorColumn     cterm=NONE        ctermbg=233  ctermfg=NONE
hi CursorIM         cterm=underline   ctermbg=43   ctermfg=34

" Tabs
hi TabLineSel       cterm=bold        ctermbg=16   ctermfg=25
hi TabLine          cterm=bold,italic ctermbg=232  ctermfg=23
hi TabLineFill      cterm=NONE        ctermbg=232  ctermfg=16

" Splits
hi VertSplit        cterm=NONE        ctermbg=16   ctermfg=232
hi statusline       cterm=bold        ctermbg=232  ctermfg=28
hi statuslinenc     cterm=NONE        ctermbg=232  ctermfg=56

" Diff
"hi DiffAdd          cterm=NONE        ctermbg=234  ctermfg=10
"hi DiffChange       cterm=NONE        ctermbg=234  ctermfg=4
"hi DiffDelete       cterm=NONE        ctermbg=234  ctermfg=52
"hi DiffText         cterm=NONE        ctermbg=232  ctermfg=12
hi DiffAdd          cterm=bold        ctermbg=235 ctermfg=28
hi DiffChange       cterm=NONE        ctermbg=233
hi DiffDelete       cterm=NONE        ctermbg=52
hi DiffText         cterm=NONE        ctermbg=18

" C
hi cString          cterm=NONE        ctermbg=NONE ctermfg=60
hi cInclude         cterm=NONE        ctermbg=NONE ctermfg=6
hi cBlock           cterm=NONE        ctermbg=NONE ctermfg=4
hi cInclude         cterm=NONE        ctermbg=NONE ctermfg=23
hi cFormat          cterm=NONE        ctermbg=NONE ctermfg=5

" Matlab
hi Function         cterm=NONE        ctermbg=NONE ctermfg=30
hi Identifier       cterm=NONE        ctermbg=NONE ctermfg=23
hi matlabOperator   cterm=NONE        ctermbg=NONE ctermfg=58
hi matlabString     cterm=NONE        ctermbg=NONE ctermfg=60

" LaTeX
hi texSectionName   cterm=NONE        ctermbg=NONE ctermfg=6
hi Delimiter        cterm=NONE        ctermbg=NONE ctermfg=237
hi texInputFile     cterm=NONE        ctermbg=NONE ctermfg=63
hi texSection       cterm=NONE        ctermbg=NONE ctermfg=63
hi texOnlyMath      cterm=NONE        ctermbg=NONE ctermfg=NONE
hi texMathZoneX     cterm=NONE        ctermbg=NONE ctermfg=23
hi texMathMatcher   cterm=NONE        ctermbg=NONE ctermfg=29
hi texRefZone       cterm=NONE        ctermbg=NONE ctermfg=23
hi texItalStyle     cterm=NONE        ctermbg=NONE ctermfg=NONE

" Vimscript
hi Constant         cterm=NONE        ctermbg=NONE ctermfg=60
hi vimNotation      cterm=NONE        ctermbg=NONE ctermfg=60

" Markdown
hi markdownLinkText cterm=NONE        ctermbg=NONE ctermfg=5

" YouCompleteMe
hi YcmErrorSection   cterm=NONE        ctermbg=52   ctermfg=NONE
hi YcmWarningSection cterm=NONE        ctermbg=53   ctermfg=NONE

" My own groups
hi MySpecialChar    cterm=bold        ctermbg=NONE ctermfg=60
hi MyBadSemiColon   cterm=NONE        ctermbg=NONE ctermfg=1
hi MyAccess         cterm=NONE        ctermbg=NONE ctermfg=239
hi MyBrac           cterm=NONE        ctermbg=NONE ctermfg=23
hi MyOps            cterm=NONE        ctermbg=NONE ctermfg=58
hi MyAffect         cterm=bold        ctermbg=NONE ctermfg=94
hi MyNoSemiColon    cterm=NONE        ctermbg=9    ctermfg=NONE
hi Collection       cterm=NONE        ctermbg=NONE ctermfg=60
hi Debug            cterm=NONE        ctermbg=NONE ctermfg=237
