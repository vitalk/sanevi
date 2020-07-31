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

  hi semshiSelected          cterm=bold ctermfg=Red ctermbg=NONE guifg=Red guibg=White

  hi def link  semshiErrorSign      pythonError
  hi def link  semshiErrorChar      pythonError

  sign define semshiError text=>> texthl=semshiErrorSign

  hi def link  pythonBuiltinObj      Structure
  hi def link  pythonBuiltinType     Type
  hi def link  pythonFunction        Function
endf


fun PytestSyntax() abort
  syn match PytestPlatform              '\v\|\|\s+(platform(.*))'
  syn match PytestTitleDecoration       "\v\={2,}"
  syn match PytestTitle                 "\v\|\|\s+(test session starts)\s+"
  syn match PytestCollecting            "\v\|\|\s+((collected|collecting)\s+(.*))"
  syn match PytestPythonFile            "\v\s+((.*.py\s+))"
  syn match PytestFooterFail            "\v\|\|\s+((.*)(failed|error)(.*) in(.*))"
  syn match PytestFooterExtra           "\v\|\|\s+((.*) selected(.*))\s+"
  syn match PytestFooter                "\v\|\|\s+((.*)passed(.* )in(.*))\=+\s+"
  syn match PytestFailures              "\v\s+(FAILURES|ERRORS)\s+"
  syn match PytestErrors                "\v\|\|\s+E\s+(.*)"
  syn match PytestDelimiter             "\v_{3,}"
  syn match PytestFailedTest            "\v\|\|\s+_{3,}\s+(.*)\s+_{3,}"
  syn match PytestLine                  "\v\|\|(\s{3}|\s\>)\s+(.*)"
  syn match PytestAssertLine            "\v(.*.py:\d+:\sAssertionError)"

  hi PytestCollecting     cterm=bold ctermbg=15 ctermfg=10 guifg=Black guibg=White
  hi PytestFooter         cterm=bold ctermbg=15 ctermfg=10 guifg=Black guibg=White

  hi def link PytestLine                PytestCollecting

  hi def link PytestPythonFile          qfFileName
  hi def link PytestPlatform            Special
  hi def link PytestTitle               String
  hi def link PytestTitleDecoration     qfSeparator
  hi def link PytestFooterFail          qfError
  hi def link PytestFooter              String
  hi def link PytestFailures            qfSeparator
  hi def link PytestDelimiter           qfSeparator
  hi def link PytestErrors              qfError
  hi def link PytestFailedTest          qfError
  hi def link PytestFooterExtra         PytestCollecting
  hi def link PytestAssertLine          qfError

endf

" }}}
