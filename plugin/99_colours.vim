" Look and feel {{{

hi lCursor guifg=NONE guibg=Red
hi iCursor guifg=NONE guibg=#268bd2

fun CustomSemshiHl()
  " hi semshiLocal           ctermfg=209 guifg=#ff875f
  hi def link semshiLocal           Identifier

  " hi semshiGlobal          ctermfg=214 guifg=#ffaf00
  hi def link semshiGlobal          pythonStatement

  " hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
  hi def link semshiImported        preProc

  " hi semshiParameter       ctermfg=75  guifg=#5fafff
  hi def link semshiParameter       Underlined

  " hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
  hi def link semshiParameterUnused pythonParam

  " hi semshiFree            ctermfg=218 guifg=#ffafd7
  hi def link semshiFree            pythonDottedName

  " hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
  hi def link semshiBuiltin         pythonBuiltinObj

  " hi semshiAttribute       ctermfg=49  guifg=#00ffaf
  hi def link semshiAttribute       pythonSelf

  " hi semshiSelf            ctermfg=249 guifg=#b2b2b2
  hi def link semshiSelf            pythonSelf

  " hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
  hi def link semshiUnresolved      Special

  hi semshiSelected          cterm=bold ctermfg=1 guifg=Red guibg=White

  hi def link  semshiErrorSign      pythonError
  hi def link  semshiErrorChar      pythonError

  sign define semshiError text=>> texthl=semshiErrorSign
endf

" }}}
