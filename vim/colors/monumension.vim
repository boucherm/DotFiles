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

"hi Normal ctermbg=235 ctermfg=242
hi Normal           cterm=NONE        ctermbg=NONE ctermfg=242  gui=NONE        guibg=#212121 guifg=#767676
hi Comment          cterm=italic      ctermbg=NONE ctermfg=22   gui=italic      guibg=NONE    guifg=#005f00
hi Statement        cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#75507b

hi Type             cterm=NONE        ctermbg=NONE ctermfg=61   gui=NONE        guibg=NONE    guifg=#5f5faf
hi Number           cterm=NONE        ctermbg=NONE ctermfg=30   gui=NONE        guibg=NONE    guifg=#008787
hi Float            cterm=NONE        ctermbg=NONE ctermfg=30   gui=NONE        guibg=NONE    guifg=#008787
hi Special          cterm=NONE        ctermbg=NONE ctermfg=5    gui=NONE        guibg=NONE    guifg=#75507b

hi LineNr           cterm=NONE        ctermbg=233  ctermfg=23   gui=NONE        guibg=#121212 guifg=#005f5f
hi SignColumn       cterm=NONE        ctermbg=232  ctermfg=NONE gui=NONE        guibg=#080808 guifg=NONE
hi ColorColumn      cterm=NONE        ctermbg=NONE ctermfg=NONE gui=NONE        guibg=NONE    guifg=NONE

hi Search           cterm=NONE        ctermbg=16   ctermfg=236  gui=NONE        guibg=#000000 guifg=#303030
hi Visual           cterm=NONE        ctermbg=16   ctermfg=NONE gui=NONE        guibg=#000000 guifg=NONE

hi Pmenu            cterm=NONE        ctermbg=234  ctermfg=241  gui=NONE        guibg=#1c1c1c guifg=#606060
hi PmenuSel         cterm=NONE        ctermbg=233  ctermfg=2    gui=NONE        guibg=#121212 guifg=#4e9a06
hi PmenuSbar        cterm=NONE        ctermbg=232  ctermfg=NONE gui=NONE        guibg=#080808 guifg=NONE
hi PmenuThumb       cterm=NONE        ctermbg=233  ctermfg=NONE gui=NONE        guibg=#121212 guifg=NONE

" Too bad, the folded highlights also affect the linenumber column
hi Folded           cterm=NONE        ctermbg=NONE ctermfg=237  gui=NONE        guibg=NONE    guifg=#3a3a3a
hi PreProc          cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi Todo             cterm=bold,italic ctermbg=16   ctermfg=88   gui=bold,italic guibg=#000000 guifg=#870000
hi Directory        cterm=NONE        ctermbg=NONE ctermfg=4    gui=NONE        guibg=NONE    guifg=#3f6691
hi MatchParen       cterm=NONE        ctermbg=53   ctermfg=NONE gui=NONE        guibg=#5f005f guifg=NONE
hi Title            cterm=NONE        ctermbg=NONE ctermfg=88   gui=NONE        guibg=NONE    guifg=#870000
hi Menu             cterm=NONE        ctermbg=200  ctermfg=213  gui=NONE        guibg=#ff00df guifg=#ff87ff
hi Wildmenu         cterm=NONE        ctermbg=60   ctermfg=232  gui=NONE        guibg=#5f5f87 guifg=#080808
hi ErrorMsg         cterm=NONE        ctermbg=90   ctermfg=235  gui=NONE        guibg=#870087 guifg=#262626
hi Error            cterm=NONE        ctermbg=232  ctermfg=1    gui=NONE        guibg=#080808 guifg=#cc2525
hi SpecialKey       cterm=bold        ctermbg=NONE ctermfg=13   gui=bold        guibg=NONE    guifg=#494573

" Cursor
hi Cursor           cterm=bold        ctermbg=NONE ctermfg=NONE gui=bold        guibg=NONE    guifg=NONE
hi CursorLine       cterm=NONE        ctermbg=233  ctermfg=NONE gui=NONE        guibg=#121212 guifg=NONE
hi CursorLineNr     cterm=bold        ctermbg=232  ctermfg=64   gui=bold        guibg=#080808 guifg=#5f8700
hi CursorColumn     cterm=NONE        ctermbg=233  ctermfg=NONE gui=NONE        guibg=#121212 guifg=NONE
hi CursorIM         cterm=underline   ctermbg=43   ctermfg=34   gui=underline   guibg=#00dfaf guifg=#00af00

" Tabs
hi TabLineSel       cterm=bold        ctermbg=16   ctermfg=24   gui=bold        guibg=#080808 guifg=#875f00
hi TabLine          cterm=bold        ctermbg=232  ctermfg=23   gui=bold        guibg=#080808 guifg=#444444
hi TabLineFill      cterm=NONE        ctermbg=232  ctermfg=16   gui=NONE        guibg=#080808 guifg=#000000

" Splits
hi VertSplit        cterm=NONE        ctermbg=16   ctermfg=232  gui=NONE        guibg=#000000 guifg=#080808
hi statusline       cterm=bold        ctermbg=232  ctermfg=94   gui=bold        guibg=#080808 guifg=#875f00
hi statuslinenc     cterm=NONE        ctermbg=232  ctermfg=236  gui=NONE        guibg=#080808 guifg=#303030

" vimdiff
hi DiffAdd          cterm=NONE        ctermbg=234  ctermfg=10   gui=NONE        guibg=#121212 guifg=NONE
hi DiffChange       cterm=NONE        ctermbg=234  ctermfg=4    gui=NONE        guibg=#121212 guifg=NONE
hi DiffDelete       cterm=NONE        ctermbg=234  ctermfg=52   gui=NONE        guibg=#121212 guifg=NONE
hi DiffText         cterm=NONE        ctermbg=232  ctermfg=12   gui=NONE        guibg=#121212 guifg=NONE

" various
hi Conceal          cterm=NONE        ctermbg=234  ctermfg=4    gui=NONE        guibg=#1c1c1c guifg=#3f6691
hi ColorColumn      cterm=NONE        ctermbg=234  ctermfg=NONE gui=NONE        guibg=#121212 guifg=NONE


" Colorations C
hi cString          cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#5f5f87
hi cInclude         cterm=NONE        ctermbg=NONE ctermfg=6    gui=NONE        guibg=NONE    guifg=#06989a
hi cBlock           cterm=NONE        ctermbg=NONE ctermfg=4    gui=NONE        guibg=NONE    guifg=#3f6691
hi cInclude         cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi cFormat          cterm=NONE        ctermbg=NONE ctermfg=5    gui=NONE        guibg=NONE    guifg=#75507b

" Colorations matlab
hi Function         cterm=NONE        ctermbg=NONE ctermfg=30   gui=NONE        guibg=NONE    guifg=#008787
hi Identifier       cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi matlabOperator   cterm=NONE        ctermbg=NONE ctermfg=58   gui=NONE        guibg=NONE    guifg=#5f5f00
hi matlabString     cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#5f5f87

" Colorations latex
hi texSectionName   cterm=NONE        ctermbg=NONE ctermfg=6    gui=NONE        guibg=NONE    guifg=#06989a
hi Delimiter        cterm=NONE        ctermbg=NONE ctermfg=237  gui=NONE        guibg=NONE    guifg=#3a3a3a
hi texInputFile     cterm=NONE        ctermbg=NONE ctermfg=63   gui=NONE        guibg=NONE    guifg=#5f5fff
hi texSection       cterm=NONE        ctermbg=NONE ctermfg=63   gui=NONE        guibg=NONE    guifg=#5f5fff
hi texOnlyMath      cterm=NONE        ctermbg=NONE ctermfg=NONE gui=NONE        guibg=NONE    guifg=NONE
hi texMathZoneX     cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi texMathMatcher   cterm=NONE        ctermbg=NONE ctermfg=29   gui=NONE        guibg=NONE    guifg=#00875f
hi texRefZone       cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi texItalStyle     cterm=NONE        ctermbg=NONE ctermfg=NONE gui=NONE        guibg=NONE    guifg=NONE

" Colorations vimscript
hi Constant         cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#5f5f87
hi vimNotation      cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#5f5f87

" Markdown
hi markdownLinkText cterm=NONE        ctermbg=NONE ctermfg=5    gui=NONE        guibg=NONE    guifg=#75507b

" My own groups
hi MySpecialChar    cterm=bold        ctermbg=NONE ctermfg=60   gui=bold        guibg=NONE    guifg=#5f5f87
hi MyBadSemiColon   cterm=NONE        ctermbg=NONE ctermfg=1    gui=NONE        guibg=NONE    guifg=#cc2525
hi MyAccess         cterm=NONE        ctermbg=NONE ctermfg=239  gui=NONE        guibg=NONE    guifg=#4e4e4e
hi MyBrac           cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi MyOps            cterm=NONE        ctermbg=NONE ctermfg=58   gui=NONE        guibg=NONE    guifg=#5f5f00
hi MyAffect         cterm=bold        ctermbg=NONE ctermfg=94   gui=bold        guibg=NONE    guifg=#875f00
hi MyNoSemiColon    cterm=NONE        ctermbg=9    ctermfg=NONE gui=NONE        guibg=#ef2929 guifg=NONE
hi Collection       cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#5f5f87
hi Debug            cterm=NONE        ctermbg=NONE ctermfg=237  gui=NONE        guibg=NONE    guifg=#3a3a3a
