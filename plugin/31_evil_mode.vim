" Evil mode (emacs key bindings) {{{

" Go to start/end of the line in command mode
cnore <c-e> <end>
cnore <c-a> <home>

" Save changes
nore <c-x><c-s> :w<cr>
inore <c-x><c-s> <esc>:w<cr>

" Close opened tab
nore <c-w><c-x> :tabclose<cr>

" Exit Vim editor, discards any changes
nnore <c-x><c-c> :qall!<cr>

" }}}
