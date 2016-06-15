" Abbreviations {{{

" Abbreviation to exit Vim and discard any changes
cabbr qq <c-r>=(getcmdtype() == ':' && getcmdpos() == 1 ? 'q!' : 'qq')<cr>

" Common programming symbol pairs that are just simpler to write
" alphanumerical. Write these and then space for abbreviation magic!
iabb  eq ==
iabb  ne !=
iabb  lt <=
iabb  gt >=
iabb  pe +=
iabb  hr =>

iabbr ture true

" }}}
