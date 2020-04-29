highlight clear
syntax reset
let g:colors_name = "below_the_lights"
set background=light
se t_Co=256

hi Normal     cterm=NONE         ctermbg=255   ctermfg=237
hi Statement  cterm=NONE         ctermbg=NONE  ctermfg=18
hi Comment    cterm=italic       ctermbg=NONE  ctermfg=24
hi LineNr     cterm=NONE         ctermbg=253   ctermfg=242

hi Pmenu      cterm=NONE         ctermbg=254   ctermfg=22
hi PmenuSel   cterm=NONE         ctermbg=252   ctermfg=4
hi PmenuSbar  cterm=NONE         ctermbg=250   ctermfg=NONE
hi PmenuThumb cterm=NONE         ctermbg=4     ctermfg=NONE

hi Folded     cterm=NONE         ctermbg=254   ctermfg=12
hi PreProc    cterm=NONE         ctermbg=NONE  ctermfg=23
hi Type       cterm=NONE         ctermbg=NONE  ctermfg=58
hi Search     cterm=NONE         ctermbg=249   ctermfg=238
hi Visual     cterm=NONE         ctermbg=252
hi Todo       cterm=bold,italic  ctermbg=NONE  ctermfg=52
hi Directory  cterm=NONE         ctermfg=4
hi MatchParen cterm=NONE         ctermbg=10    ctermfg=246
hi Title      cterm=NONE         ctermbg=NONE  ctermfg=13
hi Menu       cterm=NONE         ctermbg=200   ctermfg=213
hi Wildmenu   cterm=NONE         ctermbg=232   ctermfg=60
hi ErrorMsg   cterm=bold,italic  ctermbg=NONE  ctermfg=52

" Cursor
hi CursorLine   cterm=NONE       ctermbg=253  ctermfg=NONE
hi CursorLineNr cterm=bold       ctermbg=251  ctermfg=240
hi CursorIM     cterm=underline  ctermfg=34   ctermbg=43
hi CursorColumn cterm=NONE       ctermbg=253  ctermfg=NONE

" Tabs
hi TabLineSel  cterm=underline,bold  ctermbg=251 ctermfg=16
hi TabLine     cterm=underline,bold  ctermbg=251 ctermfg=242
hi TabLineFill cterm=underline       ctermbg=251 ctermfg=237

" Splits
hi VertSplit    cterm=none            ctermbg=245  ctermfg=24
hi statusline   cterm=underline,bold  ctermbg=251  ctermfg=59
hi statuslinenc cterm=underline,bold  ctermbg=251  ctermfg=102

hi Number           cterm=NONE        ctermbg=NONE ctermfg=30
hi Float            cterm=NONE        ctermbg=NONE ctermfg=30

hi Special ctermfg=69

hi ColorColumn      cterm=NONE        ctermbg=245   ctermfg=NONE

"" vimdiff
hi DiffAdd    cterm=NONE ctermbg=246 ctermfg=22
hi DiffChange cterm=NONE ctermbg=32
hi DiffDelete cterm=NONE ctermbg=52
hi DiffText   cterm=NONE ctermbg=32

" Colorations C
hi cString ctermfg=60
"hi cString ctermfg=darkblue
hi cInclude ctermfg=darkcyan
hi cBlock ctermfg=4
hi cInclude ctermfg=23

" Colorations matlab
hi Function         cterm=NONE        ctermbg=NONE ctermfg=30
hi Identifier cterm=none ctermfg=23
hi matlabOperator ctermfg=58
hi matlabString ctermfg=60
"" Fin colorations matlab

"" Colorations latex
hi texSectionName ctermfg=darkcyan
hi Delimiter ctermfg=237
hi texInputFile ctermfg=63
hi texSection ctermfg=63
hi texOnlyMath ctermfg=none
hi texMathZoneX ctermfg=23
hi texMathMatcher ctermfg=29
hi texRefZone ctermfg=23
"" Fin colorations latex

"" Colorations vim
hi Constant         cterm=NONE        ctermbg=NONE ctermfg=13
hi vimNotation ctermfg=60


" Colorations xml
hi xmlTag           cterm=NONE        ctermbg=NONE ctermfg=22
hi xmlTagName       cterm=NONE        ctermbg=NONE ctermfg=22
hi xmlEndTag        cterm=NONE        ctermbg=NONE ctermfg=22


" My own groups
hi MySpecialChar    cterm=bold        ctermbg=NONE ctermfg=235
hi MyBadSemiColon   cterm=NONE        ctermbg=NONE ctermfg=1
hi MyAccess         cterm=bold        ctermbg=NONE ctermfg=236
hi MyBrac           cterm=NONE        ctermbg=NONE ctermfg=23
hi MyOps            cterm=NONE        ctermbg=NONE ctermfg=54
hi MyAffect         cterm=bold        ctermbg=NONE ctermfg=29
hi MyNoSemiColon    cterm=NONE        ctermbg=9    ctermfg=NONE
hi Collection       cterm=NONE        ctermbg=NONE ctermfg=60
hi Debug            cterm=NONE        ctermbg=NONE ctermfg=237

" C#
hi csXmlTag         cterm=none        ctermbg=NONE ctermfg=24
