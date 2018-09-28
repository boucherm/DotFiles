highlight clear
syntax reset
let g:colors_name = "below_the_lights"
set background=dark
se t_Co=256

hi Normal           cterm=NONE        ctermbg=NONE ctermfg=237  gui=NONE        guibg=#212121 guifg=#767676
hi Statement        cterm=NONE        ctermbg=NONE ctermfg=18   gui=NONE        guibg=NONE    guifg=#75507b
hi Comment          cterm=italic      ctermbg=NONE ctermfg=24   gui=italic      guibg=NONE    guifg=#005f00
hi LineNr           cterm=NONE        ctermbg=249  ctermfg=242  gui=NONE        guibg=#121212 guifg=#005f5f

hi Pmenu            cterm=NONE        ctermbg=246  ctermfg=22
hi PmenuSel         cterm=NONE        ctermbg=245  ctermfg=4
hi PmenuSbar        cterm=NONE        ctermbg=244  ctermfg=NONE
hi PmenuThumb       cterm=NONE        ctermbg=4    ctermfg=NONE

"hi Folded ctermfg=236 ctermbg=234
hi Folded           cterm=NONE        ctermbg=247  ctermfg=241  gui=NONE        guibg=NONE    guifg=#3a3a3a
hi PreProc ctermfg=23
hi Type             cterm=NONE        ctermbg=NONE ctermfg=58   gui=NONE        guibg=NONE    guifg=#5f5faf
hi Search           cterm=NONE        ctermbg=251  ctermfg=238  gui=NONE        guibg=#000000 guifg=#303030
"hi Search ctermbg=16 ctermfg=65
hi Visual ctermbg=252
hi Todo             cterm=bold,italic ctermbg=NONE ctermfg=52   gui=bold,italic guibg=#000000 guifg=#870000
hi Directory ctermfg=4
hi MatchParen       cterm=NONE        ctermbg=10   ctermfg=246  gui=NONE        guibg=#5f005f guifg=NONE
hi Title            cterm=NONE        ctermbg=NONE ctermfg=13   gui=NONE        guibg=NONE    guifg=#870000
hi Menu ctermbg=200 ctermfg=213
hi Wildmenu ctermbg=232 ctermfg=60
hi ErrorMsg ctermbg=124 ctermfg=40

" Cursor
hi CursorLine       cterm=NONE        ctermbg=249  ctermfg=NONE gui=NONE        guibg=#121212 guifg=NONE
hi CursorLineNr     cterm=bold        ctermbg=251  ctermfg=240  gui=bold        guibg=#080808 guifg=#5f8700
hi CursorIM cterm=underline ctermfg=34 ctermbg=43

" Tabs
hi TabLineSel  cterm=underline,bold  ctermbg=242 ctermfg=16
hi TabLine     cterm=underline,bold  ctermbg=242 ctermfg=237
hi TabLineFill cterm=underline       ctermbg=242 ctermfg=237

" Splits
hi VertSplit    cterm=none            ctermbg=242  ctermfg=24
hi statusline   cterm=underline,bold  ctermbg=255  ctermfg=111
hi statuslinenc cterm=underline,bold  ctermbg=255  ctermfg=105

hi Number           cterm=NONE        ctermbg=NONE ctermfg=30   gui=NONE        guibg=NONE    guifg=#008787
hi Float            cterm=NONE        ctermbg=NONE ctermfg=30   gui=NONE        guibg=NONE    guifg=#008787

hi Special ctermfg=69

hi ColorColumn      cterm=NONE        ctermbg=245   ctermfg=NONE gui=NONE        guibg=#121212 guifg=NONE

"" vimdiff
hi DiffAdd ctermfg=242
hi DiffChange ctermfg=242
hi DiffDelete ctermfg=242
hi DiffText ctermfg=242

" Colorations C
hi cString ctermfg=60
"hi cString ctermfg=darkblue
hi cInclude ctermfg=darkcyan
hi cBlock ctermfg=4
hi cInclude ctermfg=23

" Colorations matlab
hi Function         cterm=NONE        ctermbg=NONE ctermfg=30   gui=NONE        guibg=NONE    guifg=#008787
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
hi Constant         cterm=NONE        ctermbg=NONE ctermfg=13   gui=NONE        guibg=NONE    guifg=#5f5f87
hi vimNotation ctermfg=60


" Colorations xml
hi xmlTag           cterm=NONE        ctermbg=NONE ctermfg=22   gui=NONE        guibg=NONE    guifg=#008787
hi xmlTagName       cterm=NONE        ctermbg=NONE ctermfg=22   gui=NONE        guibg=NONE    guifg=#008787
hi xmlEndTag        cterm=NONE        ctermbg=NONE ctermfg=22   gui=NONE        guibg=NONE    guifg=#008787


" My own groups
hi MySpecialChar    cterm=bold        ctermbg=NONE ctermfg=235  gui=bold        guibg=NONE    guifg=#5f5f87
hi MyBadSemiColon   cterm=NONE        ctermbg=NONE ctermfg=1    gui=NONE        guibg=NONE    guifg=#cc2525
hi MyAccess         cterm=bold        ctermbg=NONE ctermfg=236  gui=NONE        guibg=NONE    guifg=#4e4e4e
hi MyBrac           cterm=NONE        ctermbg=NONE ctermfg=23   gui=NONE        guibg=NONE    guifg=#005f5f
hi MyOps            cterm=NONE        ctermbg=NONE ctermfg=54   gui=NONE        guibg=NONE    guifg=#5f5f00
hi MyAffect         cterm=bold        ctermbg=NONE ctermfg=29   gui=bold        guibg=NONE    guifg=#875f00
hi MyNoSemiColon    cterm=NONE        ctermbg=9    ctermfg=NONE gui=NONE        guibg=#ef2929 guifg=NONE
hi Collection       cterm=NONE        ctermbg=NONE ctermfg=60   gui=NONE        guibg=NONE    guifg=#5f5f87
hi Debug            cterm=NONE        ctermbg=NONE ctermfg=237  gui=NONE        guibg=NONE    guifg=#3a3a3a

" C#
hi csXmlTag         cterm=none        ctermbg=NONE ctermfg=24   gui=none        guibg=NONE    guifg=#005f00
