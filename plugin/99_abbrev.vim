" Abbreviations {{{

" Abbreviation to exit Vim and discard any changes
cabbr qq <c-r>=(getcmdtype() == ':' && getcmdpos() == 1 ? 'q!' : 'qq')<cr>

" }}}
